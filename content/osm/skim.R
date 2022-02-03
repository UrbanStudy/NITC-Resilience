
if (!require(pacman)) {install.packages("pacman"); library(pacman)}
p_load(tidyverse,sf,mapview, osmdata, dodgr, bench,igraph) # crsuggest,
# remotes::install_github('ropensci/osmdata')
# devtools::install_github ("ropensci/osmplotr")
# remotes::install_git("https://git.sr.ht/~mpadge/dodgr")
# remotes::install_bitbucket("atfutures/dodgr")
# remotes::install_gitlab("atfutures1/dodgr")
# remotes::install_github("ATFutures/dodgr")
# install.packages("BiocManager")
# BiocManager::install("graph")
# install.packages("ggm")
# devtools::install_github("ropensci/stplanr")
options(scipen=10)
options(digits=7)
# packageVersion ("dodgr")


##################################################################
# Import and deal with the network.


## Full three-county road network
pdx3cnet <- readRDS("~/urbanstudy/NITC-Resilience/content/osm/pdx3cnet.Rds")

## Select the major roads
pdx3cnet.main<- pdx3cnet[which(pdx3cnet$highway%in% 
    c("motorway", "motorway_link", "primary", "primary_link", "secondary", "secondary_link", "tertiary", "tertiary_link")),] # ,"unclassified", "residential"

## Select Three columns
pdx3cnet.main <- pdx3cnet.main %>% select(osm_id, highway, geometry)
saveRDS(pdx3cnet.main, "~/urbanstudy/NITC-Resilience/content/osm/pdx3cnet.main.Rds")

## Weighted network by "motorcar" include from, to, distance, and time.
net3c.main <- weight_streetnet (pdx3cnet.main, wt_profile ="motorcar") #

## Graph Contraction: Simplify the network
net3c.main <- net3c.main[net3c.main$component == 1, ]
net3cc.main <- dodgr_contract_graph (net3c.main)
## nrow (net3c.main); nrow (net3cc.main); nrow (net3cc.main) / nrow (net3c.main)
saveRDS(net3cc.main, "~/urbanstudy/NITC-Resilience/content/osm/net3ccmain.Rds")

##################################################################
# Import Census Block Groups.
pdx_bg <- readRDS(file = "~/urbanstudy/NITC-Resilience/content/acs/pdx_bg.RDS")

## Select GROID and centroid points 
options(digits = 12)
pdx_df <- pdx_bg %>% as.data.frame() %>% select(GEOID,INTPTLAT,INTPTLON,-geometry) %>% # as_tibble()
  mutate(lat=as.numeric(INTPTLAT),lon=as.numeric(INTPTLON)) %>% 
  select(GEOID,lat,lon)
## All centroid points as OD
od.all <- pdx_df  %>% select(-GEOID)


##################################################################
################## Using dodgr_dists function ###############
##################################################################
# Calculate all network distance
## Read the network data
net3cc.main <- readRDS("~/urbanstudy/NITC-Resilience/content/osm/net3ccmain.Rds")
summary(net3cc.main$d)
plot(density(net3cc.main$d))


## Calculate OD matrix
odd.matrix <- dodgr_dists (net3cc.main, from = od.all, to = od.all) #, heap = "Heap23"
# Binary Heap (BHeap),Fibonacci Heap "FHeap", Trinomial Heap (TriHeap), Extended Trinomial Heap (TriHeapExt, and 2-3 Heap (Heap23').
row.names(odd.matrix) <- pdx_df$GEOID
colnames(odd.matrix) <- pdx_df$GEOID
odd.matrix[1:10,1:10]
class(odd.matrix)

## Convert to long table
od.table <-odd.matrix %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% arrange(orig,dest)
head(od.table)
summary(od.table$dist)
plot(density(od.table$dist))
# mean(d.c.m.all[upper.tri(d.c.m.all)])
# od.table1 <- stplanr::odmatrix_to_od(odd.matrix) 
# head(od.table1)

# The unit is km https://atfutures.github.io/dodgr/articles/dodgr.html

## Read the road network with geometry infor
# pdx3cnet.main <- readRDS("~/urbanstudy/NITC-Resilience/content/osm/pdx3cnet.main.Rds")

## Join Block Group with long OD table
pdx_bg %>% left_join(od.table %>% filter(orig=="410510073001"),by = c("GEOID"="dest")) %>% 
  mapview(z="dist") #+ mapview(pdx3cnet.main) # PDX airport, 34.7km to Hillsboro airport (41.8km in GoogleMap)

pdx_bg %>% left_join(od.table %>% filter(orig=="410670326081"),by = c("GEOID"="dest")) %>% 
  mapview(z="dist") # Hillsboro airport

pdx_bg %>% left_join(od.table %>% filter(orig=="410050243042"),by = c("GEOID"="dest")) %>% 
  mapview(z="dist") # The longest distance # Mt. Hood, Government Camp to Glenwood 211.4km (146km in GoogleMap)

pdx_bg %>% left_join(od.table %>% filter(orig=="410510103052"),by = c("GEOID"="dest")) %>% 
  mapview(z="dist") # Palisades, 55.5km to Hillsboro downtown (62km in GoogleMap)

##################################################################
# Calculate all network distance after match points to graph
vcm <- dodgr_vertices (net3cc.main)
# match block group points to vertex
vcm.od <- match_points_to_graph (vcm, od.all, connected = TRUE)
odd.matrix.match <- dodgr_dists (net3cc.main, from = vcm.od, to = vcm.od)
row.names(odd.matrix.match) <- pdx_df$GEOID
colnames(odd.matrix.match) <- pdx_df$GEOID
# sum(is.na.data.frame(d.c.m.all.match))
# main roads have no NA
mean(odd.matrix.match[upper.tri(odd.matrix.match)]) #,na.rm = T

## Convert to long table
od.table.match <-odd.matrix.match %>% as_tibble(rownames= "orig") %>% 
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% arrange(orig,dest)
summary(od.table.match$dist)
plot(density(od.table.match$dist))
####### Matching the centroid points to graph doesn't change anything #######
od.table.match[which.max(od.table.match$dist),]


##################################################################
################## Using igraph/distances function ###############
##################################################################

igrcm <- dodgr_to_igraph (net3cc.main)
igr.odd.matrix <- distances (igrcm, v = vcm.od[4]) #, to = vcm.od[-4], algorithm = "unweighted"
# mode = c("out", "all", "in"),  ignored for undirected graphs 
# algorithm = c("automatic", "unweighted", "dijkstra", "bellman-ford", "johnson")

igr.odd.table <- distance_table(igrcm, directed = F) #  F are the shorter
mean_distance(igrcm, unconnected = TRUE) # , directed = T
summary(igr.odd.table$res)
plot(density(igr.odd.table$res))

# Duplicate vertices in `to', this is not allowed




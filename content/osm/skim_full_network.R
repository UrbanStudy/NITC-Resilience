
if (!require(pacman)) {install.packages("pacman"); library(pacman)}
p_load(tidyverse,mapview, dodgr) # crsuggest,, bench,igraph, osmdatasf,
options(scipen=10)
options(digits=7)
# packageVersion ("dodgr")

##################################################################
# Import simplified full network.
# net3cc.main <- readRDS("~/urbanstudy/NITC-Resilience/content/osm/net3ccmain.Rds")
# summary(net3cc.main$d)
# plot(density(net3cc.main$d))
# Import Census Block Groups.
pdx_bg <- readRDS(file = "~/urbanstudy/NITC-Resilience/content/acs/pdx_bg.RDS")
## Select GROID and centroid points 
pdx_df <- pdx_bg %>% as.data.frame() %>% select(GEOID,INTPTLAT,INTPTLON,-geometry) %>% # as_tibble()
  mutate(lat=as.numeric(INTPTLAT),lon=as.numeric(INTPTLON)) %>% 
  select(GEOID,lat,lon)
## All centroid points as OD
od.all <- pdx_df  %>% select(-GEOID)

##################################################################
# Calculate full network distance
## Calculate OD matrix
odd.matrix <- dodgr_dists (net3cc.main, from = od.all, to = od.all) #, heap = "Heap23"
# Binary Heap (BHeap),Fibonacci Heap "FHeap", Trinomial Heap (TriHeap), Extended Trinomial Heap (TriHeapExt, and 2-3 Heap (Heap23').
colnames(odd.matrix) <- row.names(odd.matrix) <- pdx_df$GEOID
mean(odd.matrix[upper.tri(odd.matrix)])
## Convert to long table
od.table <-odd.matrix %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% arrange(orig,dest)
head(od.table)
summary(od.table$dist)
plot(density(od.table$dist))

# od.table1 <- stplanr::odmatrix_to_od(odd.matrix) 
# head(od.table1)

# The unit is km https://atfutures.github.io/dodgr/articles/dodgr.html

## Read the road network with geometry infor
pdx3cnet.main <- readRDS("~/urbanstudy/NITC-Resilience/content/osm/pdx3cnet.main.Rds")
mapview(pdx3cnet.main)


## Join Block Group with long OD table
pdx_bg %>% left_join(od.table %>% filter(orig=="410510073001"),by = c("GEOID"="dest")) %>% 
  mapview(z="dist") #+ mapview(pdx3cnet.main) # PDX airport, 34.7km to Hillsboro airport (41.8km in GoogleMap)



##################################################################
# Calculate -1 network distance

breakaleg <- function(network, O, D, leg){
  net.break <- network[!(network$osm_id %in%leg),]  
  net <- dodgr::weight_streetnet (net.break, wt_profile ="motorcar",id_col = "osm_id") #
  net <- net[net$component == 1, ]
  net <- dodgr::dodgr_contract_graph (net)
  
  library(tidyverse)
  o <- O %>% select(-GEOID)
  d <- D %>% select(-GEOID)

  odd.matrix <- dodgr::dodgr_dists (net, from = o, to = d) #, heap = "Heap23"
  # Binary Heap (BHeap),Fibonacci Heap "FHeap", Trinomial Heap (TriHeap), Extended Trinomial Heap (TriHeapExt, and 2-3 Heap (Heap23').
  colnames(odd.matrix) <- D$GEOID
  row.names(odd.matrix) <- O$GEOID
  ## Convert to long table
  od.table <- odd.matrix %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% arrange(orig,dest)
return(mean(od.table$dist))
}



leg.marguambridge <- c("5528057","595610338") # Marquam Bridge
leg.rossislandbridge <- c("189307193","542826787","682179096","587574521","123374695","174985371") # Rose Island Bridge
leg.sellwoodbridge <- c("465285319","923041198","595610339","486837832") # Sellwood Bridge
ohsu <- pdx_df[pdx_df$GEOID=="410510058002",]

pdx3cnet.main[!(pdx3cnet.main$osm_id %in% leg.marguambridge),] %>% mapview()
pdx3cnet.main[!(pdx3cnet.main$osm_id %in% leg.rossislandbridge),] %>% mapview()
pdx3cnet.main[!(pdx3cnet.main$osm_id %in% leg.sellwoodbridge),] %>% mapview()

alltoall <- breakaleg(pdx3cnet.main,pdx_df, pdx_df,NULL)
alltoall_marguambridge <- breakaleg(pdx3cnet.main, pdx_df, pdx_df, leg.marguambridge)
alltoall_rossislandbridge <- breakaleg(pdx3cnet.main, pdx_df, pdx_df, leg.rossislandbridge)
alltoall_sellwoodbridge <- breakaleg(pdx3cnet.main, pdx_df, pdx_df, leg.sellwoodbridge)

oshutoall <- breakaleg(pdx3cnet.main,ohsu, pdx_df,NULL)

library(tictoc)
tic()
oshutoall_marguambridge <- breakaleg(pdx3cnet.main,ohsu, pdx_df, leg.marguambridge)
toc()

oshutoall_rossislandbridge <- breakaleg(pdx3cnet.main,ohsu, pdx_df, leg.rossislandbridge)
oshutoall_sellwoodbridge <- breakaleg(pdx3cnet.main,ohsu, pdx_df, leg.sellwoodbridge)




if (!require(pacman)) {install.packages("pacman"); library(pacman)}
p_load(tidyverse,mapview, dodgr) # crsuggest,, bench,igraph, osmdatasf,
options(scipen=10)
options(digits=7)
# packageVersion ("dodgr")

##################################################################
# Import simplified full network.
net3cc.main <- readRDS("~/urbanstudy/NITC-Resilience/content/osm/net3ccmain.Rds")
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
leg <-c("5528057","595610338") #  NULL 
# osm_id: 5528057, 595610338 # Marquam Bridge
# osm_id: 123374695, 587574521, 174985371 Rose Island Bridge
# osm_id: "465285319","923041198","595610339","486837832" Sellwood Bridge
network <- net3cc.main
O <- D <- pdx_df
# ohsu <- O[O$GEOID=="410510058002",]
breakaleg <- function(network, O, D, leg){
  o <- O %>% select(-GEOID)
  d <- D %>% select(-GEOID)
  net.break <- network[!(network$way_id %in%leg),]
  odd.matrix <- dodgr_dists (net.break, from = o, to = d) #, heap = "Heap23"
# Binary Heap (BHeap),Fibonacci Heap "FHeap", Trinomial Heap (TriHeap), Extended Trinomial Heap (TriHeapExt, and 2-3 Heap (Heap23').
  colnames(odd.matrix) <- D$GEOID
  row.names(odd.matrix) <- O$GEOID
## Convert to long table
od.table <- odd.matrix %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% arrange(orig,dest)
return(mean(od.table$dist))
}

alltoall <- breakaleg(network,O, D,NULL)
alltoall_marguambridge <- breakaleg(network,O, D,c("5528057","595610338"))
alltoall_rossislandbridge <- breakaleg(network,O, D,c("189307193","542826787","682179096","587574521","123374695","174985371"))
alltoall_sellwoodbridge <- breakaleg(network,O, D,c("465285319","923041198","595610339","486837832"))

oshutoall <- breakaleg(network,O[O$GEOID=="410510058002",], D,NULL)
oshutoall_marguambridge <- breakaleg(network,O[O$GEOID=="410510058002",], D,c("5528057","595610338"))
oshutoall_rossislandbridge <- breakaleg(network,O[O$GEOID=="410510058002",], D,c("189307193","542826787","682179096","587574521","123374695","174985371"))
oshutoall_sellwoodbridge <- breakaleg(network,O[O$GEOID=="410510058002",], D,leg=c("465285319","923041198","595610339","486837832"))

network[network$way_id %in%c("189307193","542826787","682179096","587574521","123374695","174985371"),] %>% nrow()
network[network$way_id %in%c("465285319","923041198","595610339","486837832"),] %>% nrow()

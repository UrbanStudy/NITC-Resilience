# There are many broken-net OD distance shorter than full-net

library(tidyverse)
library(sf)
library(dodgr)
setwd("~/urbanstudy/NITC-Resilience/content/retr/")

############## Inputs #########################################################
# I1 Origin
## Import Census Block Groups.
pdx_bg <- readRDS(file = "~/urbanstudy/NITC-Resilience/content/acs/pdx_bg.RDS")

# I2 Destination
## Import shape file of Hospitals
Hospital <- st_read( paste0(getwd(),"/Hospital.shp"))
Hospital <- Hospital %>% filter(NAME=="Providence St. Vincent") # |facilitiy1== "OHSU Complex"
# I3 Disaster
## Import shape file of Landslides, 

Landslides <- st_read( paste0(getwd(),"/Landslides_poly.shp"))
Landslides <- Landslides %>% filter(CONFIDENCE=="High (=>30)")
# I4 Road network: 
##  Import shape file of road network
network <- st_read( paste0(getwd(),"/MotorVehicleSystem_RLIS.shp"))

############## Evaluate #########################################################

# E1 # Assigning the weights and buffer

weights <- c (1, 0.9, 0.9, 0.9, 0.9, 0.9, 0.8, 0.8, 0.8, 0.8) # length=10 # 0.9-0.8 # 0.6-0.4
buffer <- 100 # unit: feet
# ?????????????????????????????????????????????????? add a new level
# E2 #  Defining the function

ODcost <- function(network, O, D, disaster, buffer, weights){
  if (class(disaster)[1]=="NULL") {
    network_broken <- network
  } else {
    disaster_nearby <- st_intersection(disaster, st_buffer(network, buffer))
    network_broken <- network[!lengths(st_intersects(network, st_buffer(disaster_nearby, buffer))), ]
  }
  
  way <- sort(unique (network_broken[["MOTORCODE"]]))
  wts <- data.frame (name = "custom",
                     way = way,
                     value = weights[1:length(way)])
  
  network_broken$LOCALID <- network_broken$LOCALID %>% as.character()
  network_broken <- st_cast(network_broken, "LINESTRING") 

  crs <- st_crs(O)
  network_broken <- network_broken %>% st_transform(crs)  
  D_trans <- D %>% st_transform(crs)
  
  net <- weight_streetnet (network_broken, wt_profile = wts, type_col = "MOTORCODE", id_col = "LOCALID") 
  net <- net[net$component == 1, ]
  net <- dodgr_contract_graph (net)
  
  o <- st_coordinates(st_centroid(O))[,1:2]
  d <- st_coordinates(D_trans)[,1:2]
  colnames(o) <- colnames(d) <- c("lon","lat")
  odd.matrix <- dodgr_dists (net, from = o, to = d) 
  od.table <- odd.matrix %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
    pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% 
    mutate_at(c('orig', 'dest'), as.numeric) %>% 
    arrange(orig,dest)
  return((od.table))
}

############## Outputs #########################################################

# O1 The OD cost matrix (baseline)

to_hospital <- ODcost(network, pdx_bg, Hospital, NULL, buffer, weights)
to_hospital$dist %>% mean()  #  = 21014.6; 22419.14

# O2 The OD cost matrix (scenarios)

landslide_to_hospital <- ODcost(network, pdx_bg, Hospital, Landslides, buffer, weights)
landslide_to_hospital$dist %>% mean()  #  = 34084.37; 33742.85; 23601.73; 25160.9


landslide_to_hospital <- landslide_to_hospital %>% 
  left_join(to_hospital,by=c("orig","dest")) %>% 
  mutate(longer=dist.x-dist.y) %>% filter(dest==2)

hist(landslide_to_hospital$longer)
summary(landslide_to_hospital$longer)

landslide_to_hospital_sum <- landslide_to_hospital %>% group_by(orig) %>% summarise(avg.longer=mean(longer))
landslide_to_hospital_sum$avg.longer %>%  hist()

landslide_to_hospital_bg <- pdx_bg
landslide_to_hospital_bg$longer <- landslide_to_hospital$longer # _sum$avg.longer

landslide_to_hospital_bg_neg <- landslide_to_hospital_bg %>% filter(longer< -1)

library(mapview)

mapview(landslide_to_hospital_bg_neg
        ,zcol="longer") +
  mapview(Hospital,cex=1,color="darkred")

library(tmap)
tmap_mode("view")
tmap_options(check.and.fix = TRUE)
tm_shape(Landslides) + tm_polygons(alpha = 0.5)  #, zindex = pdx_bg$ALAND tm_lines(alpha = 0.5, col = "red" ,lwd=2) #, border.col = 4 ,border.alpha =1

### Check the negative cases
landslide_to_hospital %>% filter(longer< -1) %>% select(dest) %>% table()

landslide_to_hospital %>% filter(longer< -1) %>% select(longer) %>% t() %>% as.vector() %>% summary()

landslide_to_hospital_sum %>% filter(avg.longer< -1) %>% select(avg.longer) %>% t() %>% as.vector() %>% summary()

### Select two BG on the edge of Metro

pdx_bg2 <- pdx_bg %>% filter(GEOID %in% c("410670336003")) # ,"410050241003"
mapview(pdx_bg2) +
  mapview(network)+
  mapview(Hospital,cex=1,color="darkred")

to_hospital <- ODcost(network, pdx_bg2, Hospital, NULL, buffer, weights)
landslide_to_hospital <- ODcost(network, pdx_bg2, Hospital, Landslides, buffer, weights)
landslide_to_hospital <- landslide_to_hospital %>% 
  left_join(to_hospital,by=c("orig","dest")) %>% 
  mutate(longer=dist.x-dist.y)

hist(landslide_to_hospital$longer)
summary(landslide_to_hospital$longer)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# -27726  -19293  -16938  -17054  -13179   -1496 
### All negative

# Check the details #####################################################################

network$LOCALID <- network$LOCALID %>% as.character()
network <- st_cast(network, "LINESTRING") 
### Increase from 12868 to 12883 obs.

disaster_nearby <- st_intersection(Landslides, st_buffer(network, buffer))
network_broken <- network[!lengths(st_intersects(network, st_buffer(disaster_nearby, buffer))), ]
### From 12883 obs. to 12736 obs.
######## How to move this step after the "weight_streetnet()" ##############################


way <- sort(unique (network[["MOTORCODE"]]))
### Ten levels of roads
wts <- data.frame (name = "custom",
                   way = way,
                   value = weights[1:length(way)])


## Choose Census crs
crs <- st_crs(pdx_bg2)
network <- network %>% st_transform(crs)  
network_broken <- network_broken %>% st_transform(crs)  
### From EPSG 6360 to 4269
D_trans <- Hospital %>% st_transform(crs)
### From EPSG 6360 to 4269

# ## Choose road network crs
# crs <- st_crs(network)
# pdx_bg2 <- pdx_bg2 %>% st_transform(crs)
# ### From EPSG 4269 to 6360  ### odd.matrix = 7838687901
# D_trans <- Hospital

## Full network
net <- weight_streetnet (network, wt_profile = wts, type_col = "MOTORCODE", id_col = "LOCALID") 
### Dim = 111738*16
# "geom_num"   "edge_id"    
# "from_id"    "from_lon"   "from_lat"   
# "to_id"     "to_lon"     "to_lat"     
# "d"        "d_weighted" "highway"    "lanes"     "maxspeed"   "surface"
# "way_id"     "component" 

net <- net[net$component == 1, ]
### Reduce to 110312 obs.
net <- dodgr_contract_graph (net)
### Reduce to 6814 obs.
### Omit above two steps will give zero distance

### Use centroid points
o <- st_coordinates(st_centroid(pdx_bg2))
d <- st_coordinates(D_trans) # [,1:2]
colnames(o) <- colnames(d) <- c("lon","lat")

### Use columns of lon and lat in data
o <- pdx_bg2[,c("INTPTLON","INTPTLAT")]  # %>% select(INTPTLON) 
st_geometry(o) <- NULL
o <- o %>% mutate_if(is.character, as.numeric)
d <- st_coordinates(D_trans) # [,1:2]
colnames(o) <- colnames(d) <- c("lon","lat")

### Align lon and lat to vertexes
v <- dodgr_vertices (net)
o.v <- match_points_to_graph (v, o, connected = TRUE)
d.v <- match_points_to_graph (v, d, connected = TRUE)
v_broken <- dodgr_vertices (net_broken)
o.v_broken <- match_points_to_graph (v_broken, o, connected = TRUE)
d.v_broken <- match_points_to_graph (v_broken, d, connected = TRUE)


odd.matrix <- dodgr_dists (net, from = o, to = d) 
### shortest = TRUE, (FALSE calculate distances along the fastest) 
### heap = "BHeap", Fibonacci Heap (default; FHeap), Binary Heap (BHeap), 
###                 ⁠Trinomial Heap (⁠TriHeap⁠), Extended Trinomial Heap (⁠TriHeapExt⁠, and 2-3 Heap (⁠Heap23').
od.table <- odd.matrix %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% 
  mutate_at(c('orig', 'dest'), as.numeric) %>% 
  arrange(orig,dest)
### 55837

odd.matrix.align <- dodgr_dists (graph = net, from = v$id[o.v], to = v$id[d.v])
### 55837 The same


## Broken network
net_broken <- weight_streetnet (network_broken, wt_profile = wts, type_col = "MOTORCODE", id_col = "LOCALID") 
### Reduce to 107574 obs.
net_broken <- net_broken[net_broken$component == 1, ]
### Reduce to 100488 obs.
net_broken <- dodgr_contract_graph (net_broken)
### Reduce to 6376 obs.

odd.matrix_broken <- dodgr_dists (net_broken, from = o, to = d) 
### shortest = TRUE, (FALSE calculate distances along the fastest) 
### heap = "BHeap", Fibonacci Heap (default; FHeap), Binary Heap (BHeap), 
###                 ⁠Trinomial Heap (⁠TriHeap⁠), Extended Trinomial Heap (⁠TriHeapExt⁠, and 2-3 Heap (⁠Heap23').
od.table_broken <- odd.matrix_broken %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% 
  mutate_at(c('orig', 'dest'), as.numeric) %>% 
  arrange(orig,dest)
### 33532
odd.matrix_broken.align <- dodgr_dists (graph = net_broken, from = v_broken$id[o.v_broken], to = v_broken$id[d.v_broken])
### 33532 The same



dp <- dodgr_paths (net, from = o, to = d)
dp.v <- dodgr_paths (net, from = v$id[o.v], to = v$id[d.v])
dp_broken <- dodgr_paths (net_broken, from = o, to = d)
dp.v_broken <- dodgr_paths (net_broken, from = v_broken$id[o.v_broken], to = v_broken$id[d.v_broken])

dp [[1]] [[1]]
dp.v [[1]] [[1]]
dp_broken [[1]] [[1]]
dp.v_broken [[1]] [[1]]

# flows <- matrix (10 * runif (1), nrow = 1)
graph_f <- dodgr_flows_aggregate (net, from = o, to = d, flows = 10)
graph_f <- graph_f [graph_f$flow > 0, ]
dodgr_flowmap (graph_f, linescale = 5)

graph_f <- dodgr_flows_aggregate (net_broken, from = o, to = d, flows = 10)
graph_f <- graph_f [graph_f$flow > 0, ]
dodgr_flowmap (graph_f, linescale = 5)






# There are many broken-net OD distance shorter than full-net

library(tidyverse)
library(sf)
library(dodgr)
library(mapview)
setwd("~/urbanstudy/NITC-Resilience/content/retr/")

############## Inputs #########################################################
# I1 Origin
## Import Census Block Groups.
pdx_bg <- readRDS(file = "~/urbanstudy/NITC-Resilience/content/acs/pdx_bg.RDS")
### Select two BG on the edge of Metro
# pdx_bg2 <- pdx_bg %>% filter(GEOID %in% c("410670336003")) # ,"410050241003"

# I2 Destination
## Import shape file of Hospitals
Hospital <- st_read( paste0(getwd(),"/Hospital.shp"))
Hospital <- Hospital %>% filter(NAME=="Providence St. Vincent") # |facilitiy1== "OHSU Complex"

# I3 Disaster
## Import shape file of Landslides, 
Landslides <- st_read( paste0(getwd(),"/Landslides_poly.shp"))
Landslides <- Landslides %>% filter(CONFIDENCE=="High (=>30)")
buffer <- 100 # unit: feet


# I4 Road network: 
##  Import shape file of road network
network <- st_read( paste0(getwd(),"/MotorVehicleSystem_RLIS.shp"))
network$LOCALID <- network$LOCALID %>% as.character()
network <- st_cast(network, "LINESTRING")
### Increase from 12868 to 12883 obs.

############## Evaluate #########################################################
# E1 # Identify the disaster polygons nearby the road network #########
disaster_nearby <- st_intersection(Landslides, st_buffer(network, buffer))
# mapview(disaster_nearby)
# network_broken <- network[!lengths(st_intersects(network, st_buffer(disaster_nearby, buffer))), ]
# mapview(network_broken) + mapview(disaster_nearby, color="darkred" )

## Identify the id of road where are nearby the polygons
id_broken <- network$LOCALID[lengths(st_intersects(network, st_buffer(disaster_nearby, buffer)))] %>% unique()
# 134949 135431 135467 135543 136370 136546 136549 136715 136853 150144 
# 24     19     20      9      6      7      5      3      3     51
network[network$LOCALID == "134949",]
network$MOTORCODE[network$LOCALID %in% id_broken]
network %>% dplyr::filter(LOCALID == "134949")
network %>% dplyr::filter(LOCALID %in% id_broken)

# network.df <- network # %>% as.data.frame()
# st_geometry(network.df) <- NULL

network$MOTORCODE[lengths(st_intersects(network, st_buffer(disaster_nearby, buffer)))] <- "99"
mapview(network[network$MOTORCODE=="99",])
mapview(network,zcol="MOTORCODE")


# E2 # Unify the crs ###################################

## Choose Census crs
crs <- st_crs(pdx_bg)
network <- network %>% st_transform(crs)  
# network_broken <- network_broken %>% st_transform(crs)  
### From EPSG 6360 to 4269
D_trans <- Hospital %>% st_transform(crs)
### From EPSG 6360 to 4269

# ## Choose road network crs
# crs <- st_crs(network)
# pdx_bg2 <- pdx_bg2 %>% st_transform(crs)
# ### From EPSG 4269 to 6360  ### odd.matrix = 7838687901
# D_trans <- Hospital

### Use centroid points
o <- st_coordinates(st_centroid(pdx_bg))
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




# E3 # Weighting the network ############################
##  Create the weight table
### Ten levels of roads plus a unaccessible level
way <- c(sort(unique (network[["MOTORCODE"]])),99) #
weights <- c (1, 0.9, 0.9, 0.9, 0.9, 0.9, 0.8, 0.8, 0.8, 0.8, 0.001) # length=10 # 0.9-0.8 # 0.6-0.4 ## 
wts <- data.frame (name = "custom",
                   way = way,
                   value = weights[1:length(way)])

## Weighting network will lose "geometry"
net <- weight_streetnet (network, 
                         wt_profile = wts, 
                         type_col = "MOTORCODE", 
                         id_col = "LOCALID") #,
                         # keep_cols = "access") 

net <- net[net$component == 1, ]
### Reduce to 110312 obs.
# net <- dodgr_contract_graph (net)  ##### skip this step
### Reduce to 6814 obs.
net[which(net$d < net$d_weighted/10),c("d","d_weighted")]


# E4 # Calculate all distances ############################
odd.matrix <- dodgr_dists (net, from = o, to = d) 
od.table <- odd.matrix %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% 
  mutate_at(c('orig', 'dest'), as.numeric) %>% 
  arrange(orig,dest)
### 55837

odd.matrix.align <- dodgr_dists (graph = net, from = v$id[o.v], to = v$id[d.v])
### 55837 The same

# E5 # Using Broken network ############################
### Deleting the broken segment by index
net_broken <- net[!net$way_id %in% id_broken,]

odd.matrix_broken <- dodgr_dists (net_broken, from = o, to = d) 

od.table_broken <- odd.matrix_broken %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% 
  mutate_at(c('orig', 'dest'), as.numeric) %>% 
  arrange(orig,dest)
### 33532

odd.matrix_broken.align <- dodgr_dists (graph = net_broken, from = v_broken$id[o.v_broken], to = v_broken$id[d.v_broken])
### 33532 The same


landslide_to_hospital <- od.table %>% 
  left_join(od.table_broken,by=c("orig","dest")) %>% 
  mutate(longer=dist.x-dist.y)
landslide_to_hospital %>% filter(longer!=0)


landslide_to_hospital_bg <- pdx_bg
landslide_to_hospital_bg$longer <- landslide_to_hospital$longer
mapview(landslide_to_hospital_bg,zcol="longer") +
  mapview(Hospital,cex=1,color="darkred")


dp <- dodgr_paths (net, from = o, to = d)
dp.v <- dodgr_paths (net, from = v$id[o.v], to = v$id[d.v])
dp_broken <- dodgr_paths (net_broken, from = o, to = d)
dp.v_broken <- dodgr_paths (net_broken, from = v_broken$id[o.v_broken], to = v_broken$id[d.v_broken])

dp [[1]] [[1]]
dp_broken [[1]] [[1]]

data.frame(
c(dp [[23]] [[1]], rep(NA,302-275)),
dp_broken [[23]] [[1]]
)
### Change the route from the 57th vertex

data.frame(
  c(dp [[77]] [[1]][1:71], rep(NA,317-290),dp [[77]] [[1]][72:290]),
  dp_broken [[77]] [[1]]
)
### Change the route from 72rd to 111st vertex

dp.v [[1]] [[1]]
dp.v_broken [[1]] [[1]]

# flows <- matrix (10 * runif (1), nrow = 1)
graph_f <- dodgr_flows_aggregate (net, from = o[76:77,], to = d, flows = 10)
graph_f <- graph_f [graph_f$flow > 0, ]
bb <- sf::st_bbox(pdx_bg)
bb <- c(-122.78,45.5,-122.67,45.56) # c(-122.8,45.3,-122.5,45.6)
dodgr_flowmap (graph_f, bbox = bb , linescale = 5)

graph_f_broken <- dodgr_flows_aggregate (net_broken, from = o[76:77,], to = d, flows = 10)
graph_f_broken <- graph_f_broken [graph_f_broken$flow > 0, ]
dodgr_flowmap (graph_f_broken, bbox = bb , linescale = 5)







if (!require(pacman)) {install.packages("pacman"); library(pacman)}
p_load(tidyverse, sf, mapview, dodgr) # crsuggest,, bench,igraph, osmdatasf,, sfnetworks
options(scipen=10)
options(digits=7)
# packageVersion ("dodgr")
# remotes::install_github("r-spatial/mapview") #,force = TRUE
##################################################################
# Import simplified retr network.
# net3cc.main <- readRDS("~/urbanstudy/NITC-Resilience/content/osm/net3ccmain.Rds")
# summary(net3cc.main$d)
# plot(density(net3cc.main$d))
## Read the road network with geometry infor
pdx3cnet.main <- readRDS("~/urbanstudy/NITC-Resilience/content/osm/pdx3cnet.main.Rds")
# mapview(pdx3cnet.main)
# Import Census Block Groups.
pdx_bg <- readRDS(file = "~/urbanstudy/NITC-Resilience/content/acs/pdx_bg.RDS")
## Select GROID and centroid points 
# pdx_df <- pdx_bg %>% as.data.frame() %>% select(GEOID,INTPTLAT,INTPTLON,-geometry) %>% # as_tibble()
  # mutate(lat=as.numeric(INTPTLAT),lon=as.numeric(INTPTLON)) %>% 
  # select(GEOID,lat,lon)
######################################################################
# library(rgdal)
# shp = "/home/qs26/urbanstudy/NITC-Resilience/content/retr//Motor_RLIS_landslide.shp"
# hospital <- readOGR(dsn=shp,layer =basename(strsplit(shp, "\\.")[[1]])[1])
#############
setwd("~/urbanstudy/NITC-Resilience/content/retr/")
# Hospital <- st_read( paste0(getwd(),"/Hospital.shp"))
temp = list.files(pattern="*.shp$")
# myfiles = lapply(temp, st_read) # creat a list
# for (i in 1:length(temp)) assign(temp[i], st_read(temp[i])) # same with list2env
list2env(
  lapply(setNames(temp, make.names(gsub("*.shp$", "", temp))), 
         st_read), envir = .GlobalEnv)

st_geometry_type(Hospital)
st_geometry_type(Landslides_poly)
st_crs(Hospital)
st_crs(Pop_dens)
st_crs(pdx_bg)
st_crs(Landslides_poly)
st_crs(pdx3cnet.main)

pdx_bg6360 <- pdx_bg %>% st_transform(st_crs(Landslides_poly))
pdx_df6360 <- pdx_bg6360 %>% as.data.frame() %>% select(GEOID,INTPTLAT,INTPTLON,-geometry) %>% # as_tibble()
  mutate(lat=as.numeric(INTPTLAT),lon=as.numeric(INTPTLON)) %>% 
  select(GEOID,lat,lon)

pdx3cnet.main6360 <- pdx3cnet.main %>% st_transform(st_crs(Landslides_poly))
st_crs(pdx_bg6360)
st_crs(pdx3cnet.main6360)

Hospital4269 <- Hospital %>% st_transform(st_crs(pdx3cnet.main))
Landslides_poly4269 <- Landslides_poly %>% st_transform(st_crs(pdx3cnet.main))

sf::st_coordinates(Hospital)[1:3,]
sf::st_coordinates(pdx_bg6360)[1:3,]
sf::st_coordinates(pdx3cnet.main6360)[1:3,]

st_geometry(pdx_bg6360)[[4]][[1]][[1]][1:3,]
st_geometry(pdx3cnet.main6360)[[4]][1:3,]
st_geometry(Hospital)[[1]][1:3,]
str(pdx_bg6360)
str(Hospital)
# leaflet(pdx_bg) %>% 
#   addProviderTiles("CartoDB.Positron") %>% 
#   addPolygons(color = "green")  # addPolylines()
# mapview(Motor_RLIS_landslide) + mapview(Hospital) + mapview(pdx_bg)

##################################################################
# Calculate full network distance
## Calculate OD matrix
## All centroid points as OD
od.all <- pdx_df  %>% select(-GEOID)
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
## Join Block Group with long OD table
pdx_bg %>% left_join(od.table %>% filter(orig=="410510073001"),by = c("GEOID"="dest")) %>% 
  mapview(z="dist") #+ mapview(pdx3cnet.main) # PDX airport, 34.7km to Hillsboro airport (41.8km in GoogleMap)



##################################################################
# Calculate -1 network distance

leg.marguambridge <- c("595610338","5528057") # Marquam Bridge #,"5528057"
leg.marguambridge1 <- c("595610338") # Marquam Bridge #,"5528057"
leg.marguambridge2 <- c("5528057") 
leg.rossislandbridge <- c("682179096","123374695","587574521","174985371") # Rose Island Bridge #"189307193","542826787",
leg.sellwoodbridge <- c("465285319","923041198","595610339","486837832") # Sellwood Bridge
ohsu <- pdx_df[pdx_df$GEOID=="410510058002",]

pdx3cnet.main[!(pdx3cnet.main$osm_id %in% leg.marguambridge),] %>% mapview()
pdx3cnet.main[!(pdx3cnet.main$osm_id %in% leg.rossislandbridge),] %>% mapview()
pdx3cnet.main[!(pdx3cnet.main$osm_id %in% leg.sellwoodbridge),] %>% mapview()


##############################################################################
# Removing the broken road by disaster
######################################  RLIS network

# rlis_landslide_instersection <- st_intersection(MotorVehicleSystem_RLIS, Landslides_poly)
rlis_landslide_difference <- st_difference(MotorVehicleSystem_RLIS, Landslides_poly)
# pdx3c_landslide_instersection <- st_intersection(pdx3cnet.main6360, Landslides_poly)
# MotorVehicleSystem_RLIS %>% anti_join(rlis_landslide) # not work for sf

Landslides_nearby <- st_intersection(Landslides_poly, st_buffer(MotorVehicleSystem_RLIS, 100))
# reduce the size of landslides
rlis_landslide1 <- MotorVehicleSystem_RLIS[!lengths(st_intersects(MotorVehicleSystem_RLIS, Landslides_nearby)), ] # 12705
# rlis_landslide2 <- MotorVehicleSystem_RLIS[!lengths(st_intersects(MotorVehicleSystem_RLIS, st_buffer(Landslides_poly, 100))), ] # 12508
rlis_landslide2 <- MotorVehicleSystem_RLIS[!lengths(st_intersects(MotorVehicleSystem_RLIS, st_buffer(Landslides_nearby, 100))), ] # 12508

rlis_landslide3 <- MotorVehicleSystem_RLIS[!lengths(st_covers(MotorVehicleSystem_RLIS,Landslides_poly)), ]  # Nothing removed
rlis_landslide3 <- MotorVehicleSystem_RLIS[!lengths(st_covers(MotorVehicleSystem_RLIS,Landslides_nearby)), ]  # Nothing removed

rlis_landslide4 <- MotorVehicleSystem_RLIS[lengths(st_disjoint(MotorVehicleSystem_RLIS,Landslides_poly)), ] # Nothing removed
rlis_landslide4 <- MotorVehicleSystem_RLIS[lengths(st_disjoint(MotorVehicleSystem_RLIS,Landslides_nearby)), ] # Nothing removed

rlis_landslide5 <- MotorVehicleSystem_RLIS[!lengths(st_is_within_distance(MotorVehicleSystem_RLIS, Landslides_poly, 100)), ] # too slow
rlis_landslide6 <- MotorVehicleSystem_RLIS[!lengths(st_is_within_distance(MotorVehicleSystem_RLIS, Landslides_nearby, 100)), ] # 12508

rlis_landslide7 <- MotorVehicleSystem_RLIS[!lengths(st_crosses(MotorVehicleSystem_RLIS, Landslides_poly)), ] # 
rlis_landslide8 <- MotorVehicleSystem_RLIS[!lengths(st_crosses(MotorVehicleSystem_RLIS, Landslides_nearby)), ] # 12708


plot(MotorVehicleSystem_RLIS$geometry, col='black')
# plot(Landslides_nearby$geometry, border='green', add=TRUE)
plot(rlis_landslide2$geometry, lwd=2, col='blue', add=TRUE)
plot(rlis_landslide8$geometry, lwd=1, col='yellow', add=TRUE)

ggplot() + 
  geom_sf(data = Landslides_nearby, color = NA, fill = "cyan1") +  #, "black"size = 3
  geom_sf(data = rlis_landslide8, color = "black", fill = NA) +
  ggtitle("landslides") + 
  coord_sf()

######################################  OSM network

Landslides_nearby4269 <- Landslides_nearby %>% st_transform(st_crs(pdx3cnet.main))
osm_landslide <- pdx3cnet.main[!lengths(st_intersects(pdx3cnet.main, st_buffer(Landslides_nearby4269, 100))), ] # 29135 to 28640

plot(pdx3cnet.main$geometry, col='black')
plot(osm_landslide$geometry, lwd=1, col='yellow', add=TRUE)


############################################################################

breakaleg <- function(network, O, D, leg){
  net.break <- network[!(network$osm_id %in%leg),]  
  net <- dodgr::weight_streetnet (net.break, wt_profile ="motorcar",id_col = "osm_id") #
  net <- net[net$component == 1, ]
  net <- dodgr::dodgr_contract_graph (net)
  
  o <- st_coordinates(st_centroid(O))[,1:2]
  d <- st_coordinates(D)[,1:2]
  colnames(o) <- colnames(d) <- c("lon","lat")
  odd.matrix <- dodgr::dodgr_dists (net, from = o, to = d) #, heap = "Heap23"
  # Binary Heap (BHeap),Fibonacci Heap "FHeap", Trinomial Heap (TriHeap), Extended Trinomial Heap (TriHeapExt, and 2-3 Heap (Heap23').
  ## Convert to long table
  od.table <- odd.matrix %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
    pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% arrange(orig,dest)
  return((od.table))
}

###############################################
# Using the road network from OSM
# Complete network 
alltohospital_osm <- breakaleg(pdx3cnet.main, pdx_bg, Hospital4269,NULL)
alltohospital_osm$dist %>% mean()   #  = 21750.56
# Break one bridge
alltohospital_osm_marguambridge <- breakaleg(pdx3cnet.main, pdx_bg, Hospital4269, leg.marguambridge)
alltohospital_osm_marguambridge$dist %>% mean()
# Broken network by landslide
alltohospital_osm_landslide <- breakaleg(osm_landslide, pdx_bg, Hospital4269,NULL)
alltohospital_osm_landslide$dist %>% mean()  #  = 23067.38




###############################################
# Using the road network from RLIS
# Weight issues
str(rlis_landslide2)
table(rlis_landslide2$MOTORCODE)
table(rlis_landslide2$TYPE)
table(rlis_landslide2$FTYPE)
table(pdx3cnet.main$highway)

rlis_landslide2$MOTORCODE <- rlis_landslide2$MOTORCODE %>% as.character()
plot(rlis_landslide2["MOTORCODE"], key.pos = 4, axes = F, key.width = lcm(1.3), key.length = 1.0)
plot(rlis_landslide2["FTYPE"] )
plot(st_geometry(rlis_landslide2),col = rlis_landslide2$MOTORCODE, border = 'grey', axes = TRUE)

ggplot() + 
  geom_sf(data = rlis_landslide2, color = rlis_landslide2$MOTORCODE, show.legend = "line") + 
  ggtitle("landslides") +  coord_sf()

rlis_landslide2 %>% ggplot() + geom_sf(aes(color = MOTORCODE))
pdx3cnet.main6360 %>% ggplot() + geom_sf(aes(color = highway))
# Define weight
wts <- data.frame (name = "custom",
                   way = unique (rlis_landslide2[["MOTORCODE"]]),
                   value = c (1, 0.8, 0.8, 0.8, 0.8, 0.8, 0.6, 0.6, 0.6))

rlis_landslide2$LOCALID <- rlis_landslide2$LOCALID %>% as.character()
rlis_landslide <- st_cast(rlis_landslide2, "LINESTRING") 
rlis_network <- st_cast(MotorVehicleSystem_RLIS, "LINESTRING") 

net <- dodgr::weight_streetnet (rlis_landslide, wt_profile = wts, type_col = "MOTORCODE", id_col = "LOCALID")


### Redefine function

breakaleg <- function(rlis_network, O, D, wts){
  net <- dodgr::weight_streetnet (rlis_network, wt_profile = wts, type_col = "MOTORCODE", id_col = "LOCALID") 
  net <- net[net$component == 1, ]
  net <- dodgr::dodgr_contract_graph (net)
  
  o <- st_coordinates(st_centroid(O))[,1:2]
  d <- st_coordinates(D)[,1:2]
  colnames(o) <- colnames(d) <- c("lon","lat")
  odd.matrix <- dodgr::dodgr_dists (net, from = o, to = d) #, heap = "Heap23"
  # Binary Heap (BHeap),Fibonacci Heap "FHeap", Trinomial Heap (TriHeap), Extended Trinomial Heap (TriHeapExt, and 2-3 Heap (Heap23').
  ## Convert to long table
  od.table <- odd.matrix %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
    pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% arrange(orig,dest)
  return((od.table))
}



# Complete network 
rlis_network4269 <- rlis_network %>% st_transform(st_crs(pdx3cnet.main))
alltohospital_rlis <- breakaleg(rlis_network4269, pdx_bg, Hospital4269,wts)
alltohospital_rlis$dist %>% mean()   #  = 21320.47
# Broken network by landslide
rlis_landslide4269 <- rlis_landslide %>% st_transform(st_crs(pdx3cnet.main))
alltohospital_rlis_landslide <- breakaleg(rlis_landslide4269, pdx_bg, Hospital4269,wts)
alltohospital_rlis_landslide$dist %>% mean()  #  = 34084.37

#######################################
# Default weight setting in dodgr

wp <- weighting_profiles$weighting_profiles
names (wp)
class (wp)
unique (wp$name)
wp [wp$name == "motorcar", ]
#     name            way      value max_speed
# 133 motorcar       motorway   1.0        90
# 134 motorcar          trunk   1.0        85
# 135 motorcar        primary   0.9        65
# 136 motorcar      secondary   0.8        55
# 137 motorcar       tertiary   0.7        40
# 138 motorcar   unclassified   0.6        25
# 139 motorcar    residential   0.5        25
# 140 motorcar        service   0.4        15
# 152 motorcar   primary_link   0.9        30
# 153 motorcar secondary_link   0.8        25
# 154 motorcar  tertiary_link   0.7        20





###################################################
### Example
net <- weight_streetnet (hampi)
class(os_roads_bristol) # data.frame
dim(os_roads_bristol) # 6096  11; 6096 streets
# os_roads_bristol is also included as an sf data.frame, but in a different
# format requiring identification of columns and specification of custom
# weighting scheme.
table(os_roads_bristol$formOfWay)

colnm <- "formOfWay"
wts <- data.frame (name = "custom",
                   way = unique (os_roads_bristol [[colnm]]),
                   value = c (0.1, 0.2, 0.8, 1))
net <- weight_streetnet (os_roads_bristol, wt_profile = wts,
                         type_col = colnm, id_col = "identifier")
dim (net) # 406 11; 406 streets
table(net$highway)
# An example for a generic (non-OSM) highway, represented as the
# `routes_fast` object of the \pkg{stplanr} package, which is a
# SpatialLinesDataFrame.
## Not run: 
library (stplanr)
# merge all of the 'routes_fast' lines into a single network
r <- overline (routes_fast, attrib = "length") #, buff_dist = 1
r <- sf::st_as_sf (r, crs = 4326)
# We need to specify both a `type` and `id` column for the
# \link{weight_streetnet} function.
r$type <- 1
r$id <- seq (nrow (r))
graph <- weight_streetnet (r, type_col = "type", id_col = "id",
                           wt_profile = 1)





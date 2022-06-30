# The scripts is used to evaluate the impact of disaster on travel distance 
# Scope: Three counties in Portland Metro: 
# Element: Census Block Groups, destinations, disasters, road network

##############################################################################
# The inputs include
# I1 Origin: Centroid points of 1041 Census Block Groups;
#
# I2 Destination: Essential facilities(
#                  EOCs & PODs, 
#                  Community centers, temporary shelters, etc., 
#                  Hospitals, fire stations, Emergency operation centers,
#                  Other points from RETR...
#
# I3 Disaster: Landslides, 
#             Flood,
#             Other polygons from RETR...
#
# I4 Road network: from RLIS, or
#                  from OSM, Census roads.
#
##############################################################################
# The evaluation includes
# E1 Breaking the network by disasters
#
# E2 Weighting the network
#
# E3 Calculate all distances 
#    OD cost matrix (baseline & scenarios)
#
##############################################################################
# The outputs include:
#
# O1 Convert to long table
#
# O2 The change of distances
#
# O3 Combine to Origins
# 
##############################################################################
#  An integrated function
#  named 'ODcost()'
##############################################################################
#  There a shorter Block Group
#  Find why it becomes shorter after disaster



library(tidyverse)
library(tigris)
options(tigris_use_cache = TRUE)
library(sf)
library(dodgr)
library(mapview)
############## Inputs #########################################################

# I1 Origin ####
## Define the scope and coordinate reference system
tri_cou.id <- c('051','067','005') # Multnomah = "41051", Washington = "41067", Clackamas = "41005";
tri_cou <- counties(state = "41") %>% 
  dplyr::filter(COUNTYFP %in% tri_cou.id) %>% 
  st_union()
bb <- st_bbox(tri_cou)
crs <- st_crs(tri_cou)

## Import Census Block Groups.
pdx_bg <- block_groups(state = "41",county = tri_cou.id) 

# The two lines below are integrated to the function ###
O <- st_coordinates(st_centroid(pdx_bg)) # Use centroid points
colnames(O) <- c("lon","lat")
####

# I2 Destination ####
## Import shape file of Hospitals
setwd("~/urbanstudy/NITC-Resilience/content/retr/")
Hospital <- st_read( paste0(getwd(),"/Hospital.shp"))

# The line below is for a single destination
# Hospital <- Hospital %>% filter(NAME=="Providence St. Vincent") # |facilitiy1== "OHSU Complex"

# The three lines below is integrated to the function ### 
D <- Hospital %>% st_transform(crs)
D <- st_coordinates(D) # [,1:2]
colnames(D) <- c("lon","lat")
####

# I3 Disaster ####
## Import shape file of Landslides, 
Landslides <- st_read( paste0(getwd(),"/Landslides_poly.shp"))
## Only keep the high risk level
Landslides <- Landslides %>% filter(CONFIDENCE=="High (=>30)")
## Convert 'XYZ' to 'XY' 
Landslides <- Landslides %>% st_zm(drop = TRUE, what = "ZM")
# Landslides <- Landslides%>% st_transform(crs)  # Unnecessary because disaster and network have the same crs


# I4 Road network ####
##  Import shape file of road network
network <- st_read( paste0(getwd(),"/MotorVehicleSystem_RLIS.shp"))


### Use function can jump to line 184

############## Evaluate #########################################################

# E1 # Breaking the network by disasters
## Defining the buffer distance
buffer <- 100 # unit: feet
## Identify the disaster polygons nearby the road network 
disaster_nearby <- st_intersection(Landslides, st_buffer(network, buffer))
###### If this step runs after st_transform on network and disaster, it would be very slow ##########

## Identify the broken network
network_broken <- network[st_buffer(disaster_nearby, buffer), ]
network <- network %>% mutate(MOTORCODE = 
                ifelse (LOCALID %in% network_broken$LOCALID, 99, MOTORCODE))
network <- network %>% st_transform(crs)  


# E2 # Weighting the network
##  Create the weight table
way <- sort(unique (network[["MOTORCODE"]]))
## The full network
weights <- c (1, 0.9, 0.9, 0.9, 0.9, 0.9, 0.8, 0.8, 0.8, 0.8, 1) # c (rep(1,length(way)), 1)
wts <- data.frame (name = "custom",
                   way = way ,
                   value = weights[1:length(way)])
## Weighting network will lose "geometry"
network <- st_cast(network, "LINESTRING")
net <- weight_streetnet (network, 
                         wt_profile = wts, 
                         type_col = "MOTORCODE", 
                         id_col = "LOCALID") 
net <- net[net$component == 1, ]

## The broken network
weights_broken <- c (1, 0.9, 0.9, 0.9, 0.9, 0.9, 0.8, 0.8, 0.8, 0.8, .01)
wts_broken <- data.frame (name = "custom",
                   way = way ,
                   value = weights_broken[1:length(way)])
## Weighting network will lose "geometry"
net_broken <- weight_streetnet (network, 
                         wt_profile = wts_broken, 
                         type_col = "MOTORCODE", 
                         id_col = "LOCALID") 
net_broken <- net_broken[net_broken$component == 1, ]

# E3 # Calculate all distances 
# The OD cost matrix (baseline & scenarios)
odd.matrix <- dodgr_dists (net, from = O, to = D) 
odd.matrix_broken <- dodgr_dists (net_broken, from = O, to = D) 

############## Outputs #########################################################

# O1 # Convert to long table

od.table <- odd.matrix %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% 
  mutate_at(c('orig', 'dest'), as.numeric) %>% 
  arrange(orig,dest)
od.table_broken <- odd.matrix_broken %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% 
  mutate_at(c('orig', 'dest'), as.numeric) %>% 
  arrange(orig,dest)

# O2 # The change of distances
#

landslide_to_hospital <- od.table %>% 
  left_join(od.table_broken,by=c("orig","dest")) %>% 
  mutate(longer=dist.y-dist.x)

# O3 # Combine to Origins

landslide_to_hospital_bg <- pdx_bg
landslide_to_hospital_bg$longer <- landslide_to_hospital$longer

mapview(landslide_to_hospital_bg,zcol="longer") +
  mapview(Hospital,cex=1,color="darkred")



####################### Function ###############################
## types:  O: polygons
#          D: points
#   disaster: polygons
#    network: lines

## Coordinates:                  O : EPSG 4269
#          D, disaster, and network: EPSG 6360
#  Only transforming to EPSG 4269 gives correct distance.

# Complete I steps firstly, and define
buffer <- 100 # unit: feet
levelname <- "MOTORCODE"
idname <- "LOCALID"
weights <- c (1, 0.9, 0.9, 0.9, 0.9, 0.9, 0.8, 0.8, 0.8, 0.8) # or, rep(1,length(sort(unique (network[[levelname]]))))
# Convert Multi-lines to lines
network <- st_cast(network, "LINESTRING") 



ODcost <- function(O, D, disaster, buffer, network, weights){
  ## I1, I2 
  crs <- st_crs(O)  
  D_trans <- D %>% st_transform(crs)  
  o <- st_coordinates(st_centroid(O))
  d <- st_coordinates(D_trans) # [,1:2]  
  colnames(o) <-   colnames(d) <- c("lon","lat")
  
  ## E1
  disaster_nearby <- st_intersection(disaster, st_buffer(network, buffer))
  network_broken <- network[st_buffer(disaster_nearby, buffer), ]
  network <- network %>% 
             mutate(MOTORCODE = ifelse (LOCALID %in% network_broken$LOCALID, 99, MOTORCODE)) %>% 
             st_transform(crs)  
OD <- list()
access <- c(1, 0.01)

  ## E2
for(i in 1:2){
  way <- sort(unique (network[[levelname]]))
  wts <- data.frame (name = "custom",
                      way = way,
                    value = c(weights, access[i])) # [1:length(way)]
  
  net <- weight_streetnet (network, wt_profile = wts, type_col = levelname, id_col = idname) 
  net <- net[net$component == 1, ]  
  ## E3
  odd.matrix <- dodgr_dists (net, from = o, to = d) 
  
  ## O1
    od.table <- odd.matrix %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
                 pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% 
                 mutate_at(c('orig', 'dest'), as.numeric) %>% 
                 arrange(orig,dest)
  OD[[i]] <- od.table
}
  ## O2
 od.change <- OD[[1]] %>% 
  left_join(OD[[2]], by=c("orig","dest")) %>% 
  mutate(longer=dist.y-dist.x)
 
return((od.change))
}

############## Outputs #########################################################

od.change <- ODcost(pdx_bg, Hospital, Landslides, buffer, network, weights)

## O3 Combine to Original Block Groups
to_hospital <- to_hospital_avg <- pdx_bg

# For a single destination
to_hospital$longer <- od.change$longer
mapview(to_hospital,zcol="longer")
hist(to_hospital$longer)
summary(to_hospital$longer)

# For many destinations
od.change_avg <- od.change %>% 
                    group_by(orig) %>% 
                    summarise(avg.longer=mean(longer))
to_hospital_avg$avg.longer <- od.change_avg$avg.longer
od.change_avg$avg.longer %>%  hist()
summary(od.change_avg$avg.longer)

## Plot
library(mapview)
mapview(to_hospital_avg,zcol="avg.longer") +
  mapview(Hospital,cex=2,color="darkred", col.regions =NA)

library(tmap)
tmap_mode("view")
tmap_options(check.and.fix = TRUE)
tm_shape(to_hospital_avg) + 
  tm_polygons("avg.longer",alpha = 0.5, midpoint = NA, palette="-RdYlBu") +  #,fill.pallete = "RdYlGn"
tm_shape(Hospital) +   
  tm_symbols(col = "darkred", size = 0.2, scale = .5) 

###################### Find the only shorter Block Group ##############################

## Identify which Block Group becomes shorter after the disaster.
to_hospital.neg <- to_hospital %>% filter(avg.longer<0)
# GEOID=410050204013

pdx_bg_204013 <- pdx_bg %>% filter(GEOID == "410050204013")

od.change_204013 <- ODcost(pdx_bg_204013, Hospital, Landslides, buffer, network, weights)
hist(od.change_204013$longer)
summary(od.change_204013$longer)

## O3 Combine to Original Destinations
to_hospital_204013 <- Hospital
to_hospital_204013$longer <- od.change_204013$longer
## Plot
mapview(to_hospital_204013,zcol="longer",cex=5) +
  mapview(network, lwd=1) +
  mapview(pdx_bg_204013,col.region="darkred")

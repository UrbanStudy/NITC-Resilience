# The scripts is used to evaluate the impact of disaster on travel distance 
# Three counties in Portland Metro: Multnomah = "41051", Washington = "41067", Clackamas = "41005"
####################
# The inputs include
# I1 Origin: Centroid points of 1041 Census Block Groups, or
#           Fire and resuce, 
#           Other points from RETR...
#
# I2 Destination: Hospitals, 
#                Emergency operation centers
#                Other points from RETR...
#
# I3 Disaster: Landslides, 
#             Flood,
#             Other polygons from RETR...
#
# I4 Road network: from RLIS, or
#                  from OSM
#
#########################
# The evaluation includes
# E1 Assigning the weights and buffer
#
# E2 Defining the function
#
######################
# The outputs include:
#
# O1 The OD cost matrix (baseline)
#
# O2 The OD cost matrix (scenarios)


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
  mutate(longer=dist.x-dist.y)

hist(landslide_to_hospital$longer)
summary(landslide_to_hospital$longer)

landslide_to_hospital_sum <- landslide_to_hospital %>% group_by(orig) %>% summarise(avg.longer=mean(longer))
landslide_to_hospital_sum$avg.longer %>%  hist()

landslide_to_hospital_bg <- pdx_bg
landslide_to_hospital_bg$avg.longer <- landslide_to_hospital_sum$avg.longer

library(mapview)
mapview(landslide_to_hospital_bg,zcol="avg.longer") +
  mapview(Hospital,cex=1,color="darkred")

library(tmap)
tmap_mode("view")
tmap_options(check.and.fix = TRUE)
tm_shape(Landslides) + tm_polygons(alpha = 0.5)  #, zindex = pdx_bg$ALAND tm_lines(alpha = 0.5, col = "red" ,lwd=2) #, border.col = 4 ,border.alpha =1

### Check the negative cases

landslide_to_hospital %>% filter(longer< -1) %>% select(longer) %>% t() %>% as.vector() %>% summary()




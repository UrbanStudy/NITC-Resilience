
if (!require(pacman)) {install.packages("pacman"); library(pacman)}
p_load(tidyverse, sf, mapview, dodgr) # crsuggest,, bench,igraph, osmdatasf,, sfnetworks
options(scipen=10)
options(digits=7)
# packageVersion ("dodgr")
# remotes::install_github("r-spatial/mapview",force = TRUE)
##################################################################
# Import simplified retr network.
net3cc.main <- readRDS("~/urbanstudy/NITC-Resilience/content/osm/net3ccmain.Rds")
# summary(net3cc.main$d)
# plot(density(net3cc.main$d))
## Read the road network with geometry infor
pdx3cnet.main <- readRDS("~/urbanstudy/NITC-Resilience/content/osm/pdx3cnet.main.Rds")
mapview(pdx3cnet.main)
# Import Census Block Groups.
pdx_bg <- readRDS(file = "~/urbanstudy/NITC-Resilience/content/acs/pdx_bg.RDS")
## Select GROID and centroid points 
pdx_df <- pdx_bg %>% as.data.frame() %>% select(GEOID,INTPTLAT,INTPTLON,-geometry) %>% # as_tibble()
  mutate(lat=as.numeric(INTPTLAT),lon=as.numeric(INTPTLON)) %>% 
  select(GEOID,lat,lon)
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

rlis_landslide_cross <- st_crosses(MotorVehicleSystem_RLIS, Landslides_poly, sparse = TRUE, prepared = TRUE) 
rlis_landslide_dist <- st_is_within_distance(MotorVehicleSystem_RLIS, Landslides_poly, 50, sparse = TRUE)
# large sgbp (12868 elements)
# plot(st_geometry(rlis_landslide_cross))
pdx3c_landslide_cross <- st_crosses(pdx3cnet.main6360, Landslides_poly, sparse = TRUE, prepared = TRUE) 

rlis_landslide_instersection <- st_intersection(MotorVehicleSystem_RLIS, Landslides_poly)
# rlis_landslide_difference <- st_difference(MotorVehicleSystem_RLIS, Landslides_poly)
setdiff(rlis_landslide_instersection, MotorVehicleSystem_RLIS)
setdiff(MotorVehicleSystem_RLIS, rlis_landslide_instersection)

pdx3c_landslide_instersection <- st_intersection(pdx3cnet.main6360, Landslides_poly)
# pdx3c_landslide_difference <- st_difference(pdx3cnet.main6360, Landslides_poly)
setdiff(pdx3cnet.main6360, pdx3c_landslide_instersection)

plot(Hospital$geometry, col='red')
plot(Landslides_poly$geometry, border='green', add=TRUE)
plot(rlis_landslide_instersection$geometry, lwd=2, col='blue', add=TRUE)

ggplot() + 
  geom_sf(data = Landslides_poly, color = NA, fill = "cyan1") +  #, "black"size = 3
  geom_sf(data = rlis_landslide_instersection, color = "black", fill = NA) +
  ggtitle("landslides") + 
  coord_sf()

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

alltohospital <- breakaleg(pdx3cnet.main, pdx_bg, Hospital4269,NULL)
alltohospital_marguambridge <- breakaleg(pdx3cnet.main, pdx_bg, Hospital4269, leg.marguambridge)
alltohospital$dist %>% mean()
alltohospital_marguambridge$dist %>% mean()

###############################################
# Using the road network from RLIS
# Weight issues
str(MotorVehicleSystem_RLIS_Eras)
table(MotorVehicleSystem_RLIS_Eras$MOTORCODE)
table(MotorVehicleSystem_RLIS_Eras$TYPE)
table(MotorVehicleSystem_RLIS_Eras$FTYPE)
table(pdx3cnet.main$highway)

net <- dodgr::weight_streetnet (pdx3cnet.main, wt_profile ="motorcar",id_col = "osm_id") 
net <- dodgr::weight_streetnet (MotorVehicleSystem_RLIS_Eras, type_col = NULL,id_col = "LOCALID")

############################################

set.seed(131)
library(sf)
m = rbind(c(0,0), c(1,0), c(1,1), c(0,1), c(0,0))
p = st_polygon(list(m))
n = 100
l = vector("list", n)
for (i in 1:n)
  l[[i]] = p + 10 * runif(2)
s = st_sfc(l)
plot(s, col = sf.colors(categorical = TRUE, alpha = .5))
title("overlapping squares")
d = st_difference(s) # sequential differences: s1, s2-s1, s3-s2-s1, ...
plot(d, col = sf.colors(categorical = TRUE, alpha = .5))
title("non-overlapping differences")
i = st_intersection(s) # all intersections
plot(i, col = sf.colors(categorical = TRUE, alpha = .5))
title("non-overlapping intersections")
summary(lengths(st_overlaps(s, s))) # includes self-counts!
summary(lengths(st_overlaps(d, d)))
summary(lengths(st_overlaps(i, i)))
sf = st_sf(s)
i = st_intersection(sf) # all intersections
plot(i["n.overlaps"])
summary(i$n.overlaps - lengths(i$origins))
# A helper function that erases all of y from x:
st_erase = function(x, y) st_difference(x, st_union(st_combine(y)))
poly = st_polygon(list(cbind(c(0, 0, 1, 1, 0), c(0, 1, 1, 0, 0))))
lines = st_multilinestring(list(
  cbind(c(0, 1), c(1, 1.05)),
  cbind(c(0, 1), c(0, -.05)),
  cbind(c(1, .95, 1), c(1.05, .5, -.05))
))
snapped = st_snap(poly, lines, tolerance=.1)
plot(snapped, col='red')
plot(poly, border='green', add=TRUE)
plot(lines, lwd=2, col='blue', add=TRUE)

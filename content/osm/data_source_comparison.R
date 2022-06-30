# Comparing sources of road network
# Full networks from Census or OSM are too large to compute
# Dropping some levels of roads makes the network incomplete
# RETR's network is the best choice (small size and complete)
# Dropping Z and/or M dimensions from disaster
library(parallel)
cl <- makeCluster(detectCores(logical = F))
stopCluster(cl)

# devtools::install_github('walkerke/tigris')
library(tidyverse)
library(sf)
library(tigris)
options(tigris_use_cache = TRUE)

library(osmdata)
# remotes::install_github("ropensci/osmextract")
library(osmextract)
# devtools::install_github("itsleeds/geofabric")
# library(geofabric)
library(dodgr)


library(mapview)
library(tmap)
setwd("~/urbanstudy/NITC-Resilience/content/retr/")

# https://stackoverflow.com/questions/66867236/r-how-can-i-get-only-ways-from-overpass-api-and-reduce-the-amount-of-data
############## Inputs #########################################################
# I1 Origin
## Import Counties and Census Block Groups.
tri_cou.id <- c('051','067','005') # c("Multnomah or", "Washington or", "Clackamas or")
tri_cou <- counties(state = "41") %>% 
             dplyr::filter(COUNTYFP %in% tri_cou.id) %>% 
               st_union()
bb <- st_bbox(tri_cou)
crs <- st_crs(tri_cou)

pdx_bg <- block_groups(state = "41",county = tri_cou.id) # , cb = FALSE, year = 2019
### two BG on the edge of Metro
# pdx_bg2 <- pdx_bg %>% filter(GEOID %in% c("410670336003")) # ,"410050241003"

mapview(tri_cou,color ='black' , alpha.region =0, lwd = 2) + 
  mapview(pdx_bg, col.region='yellow',alpha.region = 0.2)

# I2 Destination
## Import shape file of Hospitals
Hospital <- st_read( paste0(getwd(),"/Hospital.shp"))
Hospital <- Hospital %>% filter(NAME=="Providence St. Vincent") # |facilitiy1== "OHSU Complex"
D_trans <- Hospital %>% st_transform(crs)
### From EPSG 6360 to 4269

# I3 Disaster
## Import shape file of Landslides, 
Landslides <- st_read( paste0(getwd(),"/Landslides_poly.shp"))
Landslides <- Landslides %>% filter(CONFIDENCE=="High (=>30)")
Landslides <- Landslides %>% st_zm(drop = TRUE, what = "ZM")
disaster <- Landslides %>% st_transform(crs)  
### From EPSG 6360 to 4269
buffer <- 100 # unit: feet


# I4 Road network: 

##  Import shape file of road network from RETR
network <- st_read( paste0(getwd(),"/MotorVehicleSystem_RLIS.shp"))
# 12868
# network_broken <- network_broken %>% st_transform(crs)  
### From EPSG 6360 to 4269

##  Import road network from Census
network <- roads(state = "41",county = tri_cou.id)
# 46497
network <-network %>% dplyr::filter(!is.na(RTTYP))
# 35408 # some links are removed

# network$RTTYP %>% table()
# C     I     M     O     S     U 
# 4    20 35051   219    79    35 
# network$MTFCC %>% table()
# S1100 S1200 S1400 S1500 S1630 S1640 S1710 S1730 S1740 S1750 S1780 S1820 
# 61   313 42246   106   751   352   166   567  1714   143    61    17 
network <- primary_secondary_roads(state = "41")
# mapview(pdx_bg, col.region='yellow',alpha.region = 0.2) + mapview(network,zcol='RTTYP',lwd=1) #
# network  %>% mapview(zcol='RTTYP',lwd=2) # "M",

########### Too dense or too sparse ##############



##  Import road network from OSM ###########################################
# net <- readRDS("~/urbanstudy/NITC-Resilience/content/osm/original data/pdxstreetnet.Rds")
# https://cran.r-project.org/web/packages/osmextract/vignettes/osmextract.html
oe_providers()
bb_poly <- st_as_sfc(bb, crs=4269)
oe_match(bb_poly) # file_size: 2096938206

oe_match_pattern("Oregon")
# oe_match_pattern("US", match_by = "iso3166_2")
# oe_match_pattern("Portland")
# oe_match("Portland") # # file_size: 39570521, provider = bbbike
its_details <- oe_match("us/oregon", provider = "geofabrik") # file_size: 167974672
usethis::edit_r_environ()
oe_download_directory()

its_pbf <- oe_download(
  file_url = its_details$url, 
  file_size = its_details$file_size ,
  provider = NULL #,
  # download_directory = # path-to-a-directory
)
its_gpkg  <-  oe_vectortranslate(its_pbf, boundary = tri_cou, boundary_type = "clipsrc") # , layer = "points"
st_layers(its_gpkg, do_count = TRUE)

# https://github.com/ropensci/osmextract/issues/12
# my_ini_file <- paste0(tempfile(), ".ini")
sf::gdal_utils(
  util = "vectortranslate", 
  source = "geofabrik_oregon-latest.osm.pbf", 
  destination = "geofabrik_oregon-latest.gpkg", 
  options = c("-f", "GPKG", "-oo", "CONFIG_FILE=osmconf2.ini", "lines")
)


its_lines <- oe_get("us/oregon", layer = "lines", vectortranslate_options = c(
                      "-t_srs", "EPSG:4269",
                      "-oo", 
                      "-select", "osm_id, highway",
                      # "-where", "highway IN ('motorway', 'motorway_link',
                      #                        'primary', 'primary_link',
                      #                        'secondary', 'secondary_link',
                      #                        'tertiary', 'tertiary_link', 'unclassified')", #
                      # "-nlt", "PROMOTE_TO_MULTI"
                    ), 
                    boundary = tri_cou, boundary_type = "clipsrc", 
                    skip_vectortranslate = TRUE, quiet = FALSE)
# 819381
oe_get_keys(its_lines, layer = "lines") # , values = TRUE
### 985 keys "highway_1", "highway:fixme" 
# mapview(its_lines)

its_lines.gpkg <- oe_read(its_gpkg) # 819381
its_lines.gpkg["highway"]

its_lines.pbf <- oe_read(its_pbf, layer = "lines", vectortranslate_options = c(
                                "-t_srs", "EPSG:4269",
                                "-select", "osm_id, highway",
                                # "-where", "highway IN ('motorway', 'motorway_link',
                                #                        'primary', 'primary_link',
                                #                        'secondary', 'secondary_link',
                                #                        'tertiary', 'tertiary_link', 'unclassified')", #
                                "-nlt", "PROMOTE_TO_MULTI"
                              ), options = c("INTERLEAVED_READING=YES"),
                         boundary = tri_cou, boundary_type = "clipsrc", 
                         skip_vectortranslate = TRUE, quiet = FALSE)
its_lines.pbf["highway"]
its_lines.pbf$highway %>% table()
# mapview(its_lines.pbf, zcol="highway")


############################## Integrated method ##############################################
# 1. Define the polygonal boundary
# la_valletta = st_sfc(st_point(c(456113.1, 3972853)), crs = 32633) %>%
#   st_buffer(5000)
# abandoned      bridleway         busway   construction       corridor 
# 1             10             28            334            119 
# crossing       cycleway       elevator         escape        footway 
# 3           1774              1              1          36439 
# living_street       motorway  motorway_link           path     pedestrian 
# 427            836           1432           7838            206 
# platform        primary   primary_link       proposed        raceway 
# 1           5545            456           1266             12 
# residential      rest_area      secondary secondary_link        service 
# 40838              2           7706            223         102496 
# services          steps       tertiary  tertiary_link          track 
# 1           1805           8767             89           8948 
# trunk     trunk_link   unclassified 
# 1079            235           2019 
# 2. Define the vectortranslate options
my_vectortranslate = c(
  "-t_srs", "EPSG:4269",
  "-select", "osm_id, highway",
  "-where", "highway IN ('motorway', 'motorway_link',
                         'primary', 'primary_link',
                         'secondary', 'secondary_link',
                         'tertiary', 'tertiary_link', 'unclassified',
                           'residential')", #
  "-nlt", "PROMOTE_TO_MULTI"
)


# 3. Download data
oe_get("us/oregon", skip_vectortranslate = TRUE, download_only = TRUE)

# 4. Read-in data
network <- oe_get("us/oregon", vectortranslate_options = my_vectortranslate, 
                  boundary = tri_cou, boundary_type = "clipsrc")
# 67911
mapview(network) #, zcol="highway"
############################### SQL style method ################
network2  <-  oe_get(
  "us/oregon", 
  query = "
  SELECT osm_id, highway, geometry 
  FROM 'lines' 
  WHERE highway IN ('motorway', 'motorway_link', 
                         'primary', 'primary_link', 
                         'secondary', 'secondary_link', 
                         'tertiary', 'tertiary_link', 'unclassified')", #
  wkt_filter = st_as_text(st_transform(tri_cou, 4269)),
  force_vectortranslate = TRUE
)
network$highway %>% table()
mapview(network2, zcol="highway")
#################################################################
network3 <- oe_get(
  place = "us/oregon", 
  layer = "lines", 
  provider = "geofabrik", 
  vectortranslate_options = c(
    "-f", "GPKG", 
    "-overwrite", 
    "-where", "highway IN ('primary', 'secondary', 'tertiary')", 
    "-clipsrc", st_as_text(tri_cou), 
    "-nlt", "PROMOTE_TO_MULTI",
    "lines"
  )
)
tm_shape(tri_cou) +
  tm_borders(col = "darkred") +
  tm_shape(network3) +
  tm_lines(lwd = 1)


########################## A slow example ########################################
# malta_crop = oe_get("Malta", force_vectortranslate = TRUE) %>% 
#   dplyr::filter(highway %in% c('primary', 'secondary', 'tertiary', 'unclassified')) %>% 
#   st_transform(32633) %>% 
#   st_crop(la_valletta)
################################################################################

highway.type <- c("motorway", "motorway_link", "primary", "primary_link", "secondary", "secondary_link", "tertiary", "tertiary_link")

network <- opq(bb) %>%
  add_osm_feature(key = 'highway', value = highway.type) %>%
  osmdata_sf () %>%
  trim_osmdata (tri_cou)
network <- network$osm_lines
# network <- st_cast(network, "LINESTRING")
mapview(network) #, zcol= "highway"

###################################################################################

# OSM roads are not completed.


############## Evaluate #########################################################
# E1 # Identify the disaster polygons nearby the road network #########
disaster_nearby <- st_intersection(disaster, st_buffer(network, buffer))
# mapview(disaster_nearby)

## Identify the broken network
# network_broken <- network[!lengths(st_intersects(network, st_buffer(disaster_nearby, buffer))), ]
network_broken <- network[st_buffer(disaster_nearby, buffer), ] # default op = st_intersects; st_touches
# mapview(network_broken) + mapview(disaster_nearby, color="darkred" )

## Identify the id of road where are nearby the polygons
id_broken <- network_broken$LOCALID %>% unique()
# id_broken <- network$LOCALID[lengths(st_intersects(network, st_buffer(disaster_nearby, buffer)))] %>% unique()
# 134949 135431 135467 135543 136370 136546 136549 136715 136853 150144 
# 24     19     20      9      6      7      5      3      3     51
# network[network$LOCALID %in% id_broken,]
# network %>% dplyr::filter(LOCALID %in% id_broken)
# network$MOTORCODE[network$LOCALID %in% id_broken]

## Filter the left network
# network_left <- network %>% filter(lengths(st_intersects(., network_broken)) ==0 ) # Reduce from 12868 to 12586
# 0     1     2     3     4     5 
# 12586   152    74    42     7     7 
# network_left <- network[network_broken, op = st_disjoint] 
network_left <- network[!(network$LOCALID %in% network_broken$LOCALID),] # Reduce from 12868 to 12721

## Modify the value of MOTORCODE to 99
# network <- network %>% filter(LOCALID %in% network_broken$LOCALID) %>% transmute(MOTORCODE = "99") %>% select(MOTORCODE)
# network <- network %>% mutate(MOTORCODE = case_when(LOCALID %in% network_broken$LOCALID ~ 99)) # %>% select(MOTORCODE)
network <- network %>% mutate(MOTORCODE = ifelse (LOCALID %in% network_broken$LOCALID, 99, MOTORCODE)) # %>% select(MOTORCODE)
# network$MOTORCODE[lengths(st_intersects(network, st_buffer(disaster_nearby, buffer)))] <- "99"
mapview(pdx_bg, color="grey", col.region='yellow',alpha.region = 0.2) +
mapview(network_broken, color="red") + 
  mapview(network_left, lwd =1) + 
  mapview(disaster_nearby, color="darkred")

mapview(network, zcol= "MOTORCODE") 




# E3 # Weighting the network ############################
##  Create the weight table
### Ten levels of roads plus a unaccessible level
way <- sort(unique (network[["MOTORCODE"]])) #c(,99)
weights <- c (rep(1,10), 1) # length=10 # 0.9-0.8 # 0.6-0.4 ## 1, 0.9, 0.9, 0.9, 0.9, 0.9, 0.8, 0.8, 0.8, 0.8, 
wts <- data.frame (name = "custom",
                   way = way ,
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




### OD: Use centroid points
o <- st_coordinates(st_centroid(pdx_bg))
d <- st_coordinates(D_trans) # [,1:2]
colnames(o) <- colnames(d) <- c("lon","lat")

### Use columns of lon and lat in data ### The same
# o <- pdx_bg[,c("INTPTLON","INTPTLAT")]  # %>% select(INTPTLON)
# st_geometry(o) <- NULL
# o <- o %>% mutate_if(is.character, as.numeric)
# d <- st_coordinates(D_trans) # [,1:2]
# colnames(o) <- colnames(d) <- c("lon","lat")

# E4 # Calculate all distances ############################
odd.matrix <- dodgr_dists (net, from = o, to = d) 
od.table <- odd.matrix %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% 
  mutate_at(c('orig', 'dest'), as.numeric) %>% 
  arrange(orig,dest)

summary(od.table$dist)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 244.7 12484.5 17295.2 19565.4 24560.0 64919.7 

# E5 # Using Broken network ############################
### Deleting the broken segment by index
net_broken <- net[!net$way_id %in% id_broken,]
odd.matrix_broken <- dodgr_dists (net_broken, from = o, to = d) 
od.table_broken <- odd.matrix_broken %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% 
  mutate_at(c('orig', 'dest'), as.numeric) %>% 
  arrange(orig,dest)


### Broken segment by weights
weights_broken <- c (rep(1,10), 0.01) # length=10 # 0.9-0.8 # 0.6-0.4 ## 1, 0.9, 0.9, 0.9, 0.9, 0.9, 0.8, 0.8, 0.8, 0.8, 
wts_broken <- data.frame (name = "custom",
                   way = way ,
                   value = weights_broken[1:length(way)])

## Weighting network will lose "geometry"
net_broken <- weight_streetnet (network, 
                         wt_profile = wts_broken, 
                         type_col = "MOTORCODE", 
                         id_col = "LOCALID") 
net_broken <- net_broken[net_broken$component == 1, ]

net_broken[which(net_broken$d < net_broken$d_weighted/10),c("d","d_weighted")]

odd.matrix_broken <- dodgr_dists (net_broken, from = o, to = d) 
od.table_broken <- odd.matrix_broken %>% as_tibble(rownames= "orig") %>%  # rownames= NA include but hide
  pivot_longer(!orig, names_to = "dest", values_to = "dist") %>% 
  mutate_at(c('orig', 'dest'), as.numeric) %>% 
  arrange(orig,dest)

summary(od.table_broken$dist)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 244.7 16171.6 26206.2 25953.2 33289.7 75702.8 


landslide_to_hospital <- od.table %>% 
  left_join(od.table_broken,by=c("orig","dest")) %>% 
  mutate(longer=dist.y-dist.x)

hist(landslide_to_hospital$longer)

landslide_to_hospital_truncated <- landslide_to_hospital %>% mutate(longer = ifelse(longer >10000, NA, longer))
hist(landslide_to_hospital_truncated$longer)


landslide_to_hospital_bg <- pdx_bg
landslide_to_hospital_bg$longer <- landslide_to_hospital$longer
mapview(landslide_to_hospital_bg,zcol="longer") +
  mapview(Hospital,cex=1,color="darkred")


dp <- dodgr_paths (net, from = o, to = d)
dp_broken <- dodgr_paths (net_broken, from = o, to = d)


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


# flows <- matrix (10 * runif (1), nrow = 1)
graph_f <- dodgr_flows_aggregate (net, from = o[1:2,], to = d, flows = 10) # 76:77
graph_f <- graph_f [graph_f$flow > 0, ]
bb <- sf::st_bbox(pdx_bg)
# bb <- c(-122.78,45.5,-122.67,45.56) # c(-122.8,45.3,-122.5,45.6)
bb <- c(-122.8,45.44,-122.6,45.52)
dodgr_flowmap (graph_f, bbox = bb , linescale = 5)

graph_f_broken <- dodgr_flows_aggregate (net_broken, from = o[1:2,], to = d, flows = 10)
graph_f_broken <- graph_f_broken [graph_f_broken$flow > 0, ]
dodgr_flowmap (graph_f_broken, bbox = bb , linescale = 5)






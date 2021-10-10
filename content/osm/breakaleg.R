library(tidyverse)
library(mapview)
library(osmdata)


pdx_osm <- opq('portland or') %>%
  add_osm_feature(key = 'highway', value = 'motorway') %>% 
  osmdata_xml(file = 'pdx.osm')

pdx_highway <- sf::st_read('pdx.osm', layer = 'lines', quiet = F)

pdx_highway_break <-pdx_highway %>% filter(osm_id!=5509189)

mapview(pdx_highway) + mapview(pdx_highway_break)

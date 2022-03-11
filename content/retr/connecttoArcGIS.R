if (!require(pacman)) {install.packages("pacman"); library(pacman)}
p_load(tidyverse, dodgr, mapview) # crsuggest,, bench,igraph, osmdatasf, ### arcgisbinding ###
options(scipen=10)
options(digits=7)
# packageVersion ("dodgr")
# remotes::install_github("r-spatial/mapview")
library(arcgisbinding)


# https://r.esri.com/assets/arcgisbinding-vignette.html

# Basic Read/Write Functionality
arc.check_product()
ozone.path <- system.file("extdata", "ca_ozone_pts.shp",
                          package="arcgisbinding")
ozone.arc.dataset <- arc.open(ozone.path)
ozone.dataframe <- arc.select(object = ozone.arc.dataset, fields = c("FID", "Shape", "LATITUDE", "LONGITUDE", "ELEVATION", "OZONE"), where_clause = "ELEVATION >= 1000")
head(ozone.dataframe)
ozone.shapeinfo <- arc.shapeinfo(ozone.arc.dataset)
ozone.shapeinfo$WKT
ozone.shape <- arc.shapeinfo(arc.shape(ozone.dataframe))
ozone.shape$WKT
arc.write(path = tempfile("ca_new", fileext=".shp"), data = ozone.dataframe)
arc.write(path = tempfile("new_pts", fileext=".shp"), data = list('data'=rnorm(100)),
          coords = list(x=runif(100,min=0,max=1),y=runif(100,min=0,max=1)),
          shape_info = list(type='Point'))
# Converting Functionality
class(ozone.dataframe)
ozone.sp.df <- arc.data2sp(ozone.dataframe)
class(ozone.sp.df)

ozone.dataframe <- arc.sp2data(ozone.sp.df)
class(ozone.dataframe)

ozone.sp.shape <- arc.shape2sp(ozone.dataframe)
class(ozone.sp.shape)

arc.fromWktToP4(ozone.arc.dataset@shapeinfo$WKT)

arc.fromWktToP4(4326)

ozone.dataframe <- arc.select(object = ozone.arc.dataset, fields = c("FID", "Shape", "LATITUDE", "LONGITUDE", "ELEVATION", "OZONE"), where_clause = "ELEVATION >= 1000", sr = "+proj=latlong +datum=wgs84 +no_defs")
arc.shapeinfo(arc.shape(ozone.dataframe))

# Wrapping R Tool Functionality

tool_exec <- function(in_params, out_params)
{
  env = arc.env()
  wkspath <- env$workspace
  
  cat(paste0("\n", "....................................", "\n"))
  cat(paste0("\n", "Printing Workspace Path...", "\n"))
  cat(paste0("\n", wkspath, "\n"))
  cat(paste0("\n", "....................................", "\n"))
  
  source_dataset = in_params[[1]]
  out_fc = out_params[[1]]
  
  #########
  arc.progress_label("Loading Dataset...")
  arc.progress_pos(20)
  d <- arc.open(source_dataset)
  data <- arc.select(d)
  
  #########
  arc.progress_label("Obtaining Attribute Names...")
  arc.progress_pos(40)
  attnames <- colnames(data)
  
  cat(paste0("\n", "....................................", "\n"))
  cat(paste0("\n", "Printing Attribute Names...", "\n"))
  cat(paste0("\n", attnames, "\n"))
  cat(paste0("\n", "....................................", "\n"))
  
  #########
  arc.progress_label("Obtaining Geometry Information...")
  arc.progress_pos(60)
  data_shp <- arc.shapeinfo(d)
  
  cat(paste0("\n", "....................................", "\n"))
  cat(paste0("\n", "Printing Geometry Information...", "\n"))
  cat(paste0("\n", data_shp, "\n"))
  cat(paste0("\n", "....................................", "\n"))
  
  #########
  arc.progress_label("Writing result dataset...")
  arc.progress_pos(80)
  
  if(!is.null(out_fc) && out_fc != "NA")
    arc.write(out_fc, data)
  
  #########  
  arc.progress_label("Done")
  arc.progress_pos(100)
  return(out_params)
  
}
# tool_exec("C:/Users/qushen/Documents/ArcGIS/Packages/RETR_F6EAF70B-6591-4996-BE7F-D30D6D4568E2/v108/Motor_RLIS_landslide.shp",
#           "C:/Users/qushen/Documents/ArcGIS/Packages/ca_new2.shp")



#######################

Motor_RLIS_landslide <- arc.open("Motor_RLIS_landslide.shp")
Motor_RLIS_landslide.dataframe <- arc.select(Motor_RLIS_landslide)
Motor_RLIS_landslide.sp.df <- arc.data2sp(Motor_RLIS_landslide.dataframe)
Motor_RLIS_landslide.shapeinfo <- arc.shapeinfo(Motor_RLIS_landslide)
Motor_RLIS_landslide.shapeinfo$WKT
Motor_RLIS_landslide.shape <- arc.shapeinfo(arc.shape(Motor_RLIS_landslide.dataframe))
Motor_RLIS_landslide.shape$WKT


Pop_dens <- arc.open("Pop_dens.shp")
Pop_dens.dataframe <- arc.select(Pop_dens)
Pop_dens.sp.df <- arc.data2sp(Pop_dens.dataframe)

############################

pdx_bg <- readRDS(file = "~/urbanstudy/NITC-Resilience/content/acs/pdx_bg.RDS")
## Select GROID and centroid points 
pdx_df <- pdx_bg %>% as.data.frame() %>% select(GEOID,INTPTLAT,INTPTLON,-geometry) %>% # as_tibble()
  mutate(lat=as.numeric(INTPTLAT),lon=as.numeric(INTPTLON)) %>% 
  select(GEOID,lat,lon)

###################################

library(mapview)
mapview(Motor_RLIS_landslide.sp.df)+
mapview(Pop_dens.sp.df)

library(tidyverse)
library(dodgr)

pdx_bg <- readRDS(file = "~/urbanstudy/NITC-Resilience/content/acs/pdx_bg.RDS")
pdx_df <- pdx_bg %>% as.data.frame() %>% select(GEOID,INTPTLAT,INTPTLON,-geometry) %>% # as_tibble()
  mutate(lat=as.numeric(INTPTLAT),lon=as.numeric(INTPTLON)) %>% 
  select(-INTPTLAT,-INTPTLON)
od <- pdx_df %>% filter(GEOID%in%c("410670326081","410510056002", "410510073001")) %>% select(-GEOID) # airport(Hils)

net3cc.main <- readRDS(file = "~/urbanstudy/NITC-Resilience/content/osm/net3ccmain.Rds")

flows <- matrix (10 * runif (1041 * 3),nrow = 1041)
net3cc.main_f <- dodgr_flows_aggregate (net3cc.main, from = pdx_df[,-1], to = od[1,], flows = flows)

dodgr_flowmap (net3cc.main_f, linescale = 10)
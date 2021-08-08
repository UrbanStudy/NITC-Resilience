---
title: "Transit Dependent Population"
date: "Last compiled on 07 August, 2021"
categories: ["R"]
tags: ["R Markdown", "ACS", "Census data"]
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />





<!-- #  {.tabset .tabset-fade .tabset-pills} -->

# Geographic Boudary

## Three Counties

Source: TIGER data base, calculated for use with Census 2010

Land area measurements are originally recorded as whole square meters 
sq.m = sq.km\* 1,000,000; sq.km = sq.mi\* 2.58999; sq.m = sq.mi\* 2,589,988).



```r
portland_city_place <- places("41", cb = FALSE, year = 2019) %>% filter(NAME=="Portland")
# pdx_md<- metro_divisions(year=2019)  no protland #CBSAFP=="38900", CSAFP=="440", NAME %in% grepl("Portland", NAME)
# ua <-  urban_areas(year=2019) 
# tri_cou <- c(Multnomah = "41051", Washington = "41067", Clackamas = "41005") #, Yamhill = "41071" , Clark = "53011"
tri_cou <- c('051','067','005')# "Multnomah", "Washington", "Clackamas"
pdx_counties <- counties("41", cb = FALSE, year = 2019) %>% filter(NAME %in% tri_cou) # GEOID==tri_cou
pdx_tr <- tracts(state = "41",county = tri_cou, cb = FALSE, year = 2019)
pdx_bg <- block_groups(state = "41",county = tri_cou, cb = FALSE, year = 2019)
# pdx_bg <- pdx_bg %>% filter(str_sub(GEOID10, 1, 5)  %in% tri_cou)
```


# ACS Variables



```r
vars <- load_variables(2019, "acs5")
# View(vars)
str(vars)
```

```
## tibble [27,040 × 3] (S3: tbl_df/tbl/data.frame)
##  $ name   : chr [1:27040] "B01001_001" "B01001_002" "B01001_003" "B01001_004" ...
##  $ label  : chr [1:27040] "Estimate!!Total:" "Estimate!!Total:!!Male:" "Estimate!!Total:!!Male:!!Under 5 years" "Estimate!!Total:!!Male:!!5 to 9 years" ...
##  $ concept: chr [1:27040] "SEX BY AGE" "SEX BY AGE" "SEX BY AGE" "SEX BY AGE" ...
```

## Total Population


```r
(pop_tract <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "tract",
  variables = c("B01003_001"),cache_table = T
)) %>% str()
```

```
## tibble [355 × 5] (S3: tbl_df/tbl/data.frame)
##  $ GEOID   : chr [1:355] "41005020100" "41005020200" "41005020302" "41005020303" ...
##  $ NAME    : chr [1:355] "Census Tract 201, Clackamas County, Oregon" "Census Tract 202, Clackamas County, Oregon" "Census Tract 203.02, Clackamas County, Oregon" "Census Tract 203.03, Clackamas County, Oregon" ...
##  $ variable: chr [1:355] "B01003_001" "B01003_001" "B01003_001" "B01003_001" ...
##  $ estimate: num [1:355] 3984 6258 4019 6112 5697 ...
##  $ moe     : num [1:355] 255 332 282 339 256 292 183 207 306 161 ...
```

There is not driver information.


#### Vehicle Households


```r
vars %>% dplyr::filter(grepl("Total:!!No vehicle available",label)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"))
```

<table class="table table-striped table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B08014_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!No vehicle available </td>
   <td style="text-align:left;"> SEX OF WORKERS BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08141_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!No vehicle available </td>
   <td style="text-align:left;"> MEANS OF TRANSPORTATION TO WORK BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!No vehicle available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08203_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!No vehicle available </td>
   <td style="text-align:left;"> NUMBER OF WORKERS IN HOUSEHOLD BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08541_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!No vehicle available </td>
   <td style="text-align:left;"> MEANS OF TRANSPORTATION TO WORK BY VEHICLES AVAILABLE FOR WORKPLACE GEOGRAPHY </td>
  </tr>
</tbody>
</table>

- SEX OF WORKERS BY VEHICLES AVAILABLE

"B08014_002" same to "B08141_002" MEANS OF TRANSPORTATION TO WORK BY VEHICLES AVAILABLE


```r
(noveh1 <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "tract",
  variables = "B08014_002", output = "wide", 
  summary_var = "B08014_001", cache_table = T
  ) %>% 
  mutate(noveh.per= 100 * B08014_002E / summary_est) %>% 
  select(GEOID,B08014_002E, summary_est, noveh.per)) %>% head()
```

```
## # A tibble: 6 x 4
##   GEOID       B08014_002E summary_est noveh.per
##   <chr>             <dbl>       <dbl>     <dbl>
## 1 41005020700          23        1968     1.17 
## 2 41005022500         120        4128     2.91 
## 3 41005023401           0        2339     0    
## 4 41005024100           0        2244     0    
## 5 41005020600          42        4210     0.998
## 6 41005020303           0        3191     0
```

- HOUSEHOLD SIZE BY VEHICLES AVAILABLE

"B08201_002" same to "B08203_002" NUMBER OF WORKERS IN HOUSEHOLD BY VEHICLES AVAILABLE


```r
(noveh2 <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "tract",
  variables = "B08201_002", output = "wide", # same to "B08141_002"
  summary_var = "B08201_001", cache_table = T
  ) %>% 
  mutate(noveh.per= 100 * B08201_002E / summary_est) %>% 
  select(GEOID,B08201_002E, summary_est, noveh.per)) %>% head()
```

```
## # A tibble: 6 x 4
##   GEOID       B08201_002E summary_est noveh.per
##   <chr>             <dbl>       <dbl>     <dbl>
## 1 41005020700          30        1445     2.08 
## 2 41005022500         149        3022     4.93 
## 3 41005023401          18        1763     1.02 
## 4 41005024100          10        1783     0.561
## 5 41005020600          53        3054     1.74 
## 6 41005020303         169        2750     6.15
```


- TENURE BY VEHICLES AVAILABLE

Sum of Owner and Renter same to "B08201_002"


```r
vars %>% filter((grepl("occupied:!!No vehicle available",label))) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"))
```

<table class="table table-striped table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B25044_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Owner occupied:!!No vehicle available </td>
   <td style="text-align:left;"> TENURE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25044_010 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Renter occupied:!!No vehicle available </td>
   <td style="text-align:left;"> TENURE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25045_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Owner occupied:!!No vehicle available: </td>
   <td style="text-align:left;"> TENURE BY VEHICLES AVAILABLE BY AGE OF HOUSEHOLDER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25045_004 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Owner occupied:!!No vehicle available:!!Householder 15 to 34 years </td>
   <td style="text-align:left;"> TENURE BY VEHICLES AVAILABLE BY AGE OF HOUSEHOLDER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25045_005 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Owner occupied:!!No vehicle available:!!Householder 35 to 64 years </td>
   <td style="text-align:left;"> TENURE BY VEHICLES AVAILABLE BY AGE OF HOUSEHOLDER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25045_006 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Owner occupied:!!No vehicle available:!!Householder 65 years and over </td>
   <td style="text-align:left;"> TENURE BY VEHICLES AVAILABLE BY AGE OF HOUSEHOLDER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25045_012 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Renter occupied:!!No vehicle available: </td>
   <td style="text-align:left;"> TENURE BY VEHICLES AVAILABLE BY AGE OF HOUSEHOLDER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25045_013 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Renter occupied:!!No vehicle available:!!Householder 15 to 34 years </td>
   <td style="text-align:left;"> TENURE BY VEHICLES AVAILABLE BY AGE OF HOUSEHOLDER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25045_014 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Renter occupied:!!No vehicle available:!!Householder 35 to 64 years </td>
   <td style="text-align:left;"> TENURE BY VEHICLES AVAILABLE BY AGE OF HOUSEHOLDER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25045_015 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Renter occupied:!!No vehicle available:!!Householder 65 years and over </td>
   <td style="text-align:left;"> TENURE BY VEHICLES AVAILABLE BY AGE OF HOUSEHOLDER </td>
  </tr>
</tbody>
</table>



```r
get_acs(
  state = "41",
  county = tri_cou,
  geography = "tract",
  variables = c("B25044_003","B25044_010"), output = "wide",
  summary_var = "B25044_001", cache_table = T
  ) %>% 
  mutate(noveh.per= 100 * (B25044_003E + B25044_010E)/summary_est) %>% 
  select(GEOID,noveh.per) %>% head()
```

```
## # A tibble: 6 x 2
##   GEOID       noveh.per
##   <chr>           <dbl>
## 1 41005020700     2.08 
## 2 41005022500     4.93 
## 3 41005023401     1.02 
## 4 41005024100     0.561
## 5 41005020600     1.74 
## 6 41005020303     6.15
```




```r
pdx_tr1 <- pdx_tr %>% left_join(noveh1,by="GEOID")
pdx_tr2 <- pdx_tr %>% left_join(noveh2,by="GEOID")
```




```r
mapview(pdx_tr1, zcol = "noveh.per") + 
mapview(pdx_tr1, zcol = "B08014_002E") +
mapview(pdx_tr2, zcol = "noveh.per") + 
mapview(pdx_tr2, zcol = "B08201_002E")
```

- HOUSEHOLD SIZE BY VEHICLES AVAILABLE


```r
vars %>% filter(grepl("B08201_", name,fixed = T)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"))
```

<table class="table table-striped table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B08201_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!No vehicle available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!1 vehicle available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_004 </td>
   <td style="text-align:left;"> Estimate!!Total:!!2 vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_005 </td>
   <td style="text-align:left;"> Estimate!!Total:!!3 vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_006 </td>
   <td style="text-align:left;"> Estimate!!Total:!!4 or more vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_007 </td>
   <td style="text-align:left;"> Estimate!!Total:!!1-person household: </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_008 </td>
   <td style="text-align:left;"> Estimate!!Total:!!1-person household:!!No vehicle available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_009 </td>
   <td style="text-align:left;"> Estimate!!Total:!!1-person household:!!1 vehicle available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_010 </td>
   <td style="text-align:left;"> Estimate!!Total:!!1-person household:!!2 vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_011 </td>
   <td style="text-align:left;"> Estimate!!Total:!!1-person household:!!3 vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_012 </td>
   <td style="text-align:left;"> Estimate!!Total:!!1-person household:!!4 or more vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_013 </td>
   <td style="text-align:left;"> Estimate!!Total:!!2-person household: </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_014 </td>
   <td style="text-align:left;"> Estimate!!Total:!!2-person household:!!No vehicle available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_015 </td>
   <td style="text-align:left;"> Estimate!!Total:!!2-person household:!!1 vehicle available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_016 </td>
   <td style="text-align:left;"> Estimate!!Total:!!2-person household:!!2 vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_017 </td>
   <td style="text-align:left;"> Estimate!!Total:!!2-person household:!!3 vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_018 </td>
   <td style="text-align:left;"> Estimate!!Total:!!2-person household:!!4 or more vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_019 </td>
   <td style="text-align:left;"> Estimate!!Total:!!3-person household: </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_020 </td>
   <td style="text-align:left;"> Estimate!!Total:!!3-person household:!!No vehicle available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_021 </td>
   <td style="text-align:left;"> Estimate!!Total:!!3-person household:!!1 vehicle available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_022 </td>
   <td style="text-align:left;"> Estimate!!Total:!!3-person household:!!2 vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_023 </td>
   <td style="text-align:left;"> Estimate!!Total:!!3-person household:!!3 vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_024 </td>
   <td style="text-align:left;"> Estimate!!Total:!!3-person household:!!4 or more vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_025 </td>
   <td style="text-align:left;"> Estimate!!Total:!!4-or-more-person household: </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_026 </td>
   <td style="text-align:left;"> Estimate!!Total:!!4-or-more-person household:!!No vehicle available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_027 </td>
   <td style="text-align:left;"> Estimate!!Total:!!4-or-more-person household:!!1 vehicle available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_028 </td>
   <td style="text-align:left;"> Estimate!!Total:!!4-or-more-person household:!!2 vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_029 </td>
   <td style="text-align:left;"> Estimate!!Total:!!4-or-more-person household:!!3 vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B08201_030 </td>
   <td style="text-align:left;"> Estimate!!Total:!!4-or-more-person household:!!4 or more vehicles available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
  </tr>
</tbody>
</table>

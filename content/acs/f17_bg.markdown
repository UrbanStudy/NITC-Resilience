---
title: "4 Social Vulnerability Index (BG)"
date: "2021-10-09"
categories: ["R"]
tags: ["R Markdown", "ACS", "Census data"]
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />



Block Group Level

<!-- #  {.tabset .tabset-fade .tabset-pills} -->











# Base Social Vulnerability Indicators(percentages)

## Child care Needs

### 1 Single parent households with children/Total Households



```r
child_var <- c("B09002_008")
child_tot <- c("B09002_001")
vars %>% filter(name %in% c(child_tot,child_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B09002_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> OWN CHILDREN UNDER 18 YEARS BY FAMILY TYPE AND AGE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B09002_008 </td>
   <td style="text-align:left;"> Estimate!!Total:!!In other families: </td>
   <td style="text-align:left;"> OWN CHILDREN UNDER 18 YEARS BY FAMILY TYPE AND AGE </td>
  </tr>
</tbody>
</table>


```r
SVI[[1]] <- svi1_child <- comb(child_var,child_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi1_child <- readRDS("SVI.RDS")[[1]]
svi1_child %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 537 </td>
   <td style="text-align:right;"> 128 </td>
   <td style="text-align:right;"> 45 </td>
   <td style="text-align:right;"> 37 </td>
   <td style="text-align:right;"> 8.379888 </td>
   <td style="text-align:right;"> 6.594250 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 170 </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 115 </td>
   <td style="text-align:right;"> 76 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:right;"> 16.521739 </td>
   <td style="text-align:right;"> 20.784860 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 180 </td>
   <td style="text-align:right;"> 112 </td>
   <td style="text-align:right;"> 22 </td>
   <td style="text-align:right;"> 37 </td>
   <td style="text-align:right;"> 12.222222 </td>
   <td style="text-align:right;"> 19.097010 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 237 </td>
   <td style="text-align:right;"> 141 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 83 </td>
   <td style="text-align:right;"> 88 </td>
   <td style="text-align:right;"> 58 </td>
   <td style="text-align:right;"> 78 </td>
   <td style="text-align:right;"> 69.879518 </td>
   <td style="text-align:right;"> 57.812383 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 401 </td>
   <td style="text-align:right;"> 133 </td>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:right;"> 4.987531 </td>
   <td style="text-align:right;"> 5.491937 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 117 </td>
   <td style="text-align:right;"> 76 </td>
   <td style="text-align:right;"> 83 </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 70.940171 </td>
   <td style="text-align:right;"> 38.158574 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 91 </td>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 46 </td>
   <td style="text-align:right;"> 39 </td>
   <td style="text-align:right;"> 50.549450 </td>
   <td style="text-align:right;"> 32.639180 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 571 </td>
   <td style="text-align:right;"> 111 </td>
   <td style="text-align:right;"> 47 </td>
   <td style="text-align:right;"> 36 </td>
   <td style="text-align:right;"> 8.231173 </td>
   <td style="text-align:right;"> 6.098300 </td>
  </tr>
</tbody>
</table>





### 2 Population 5 or below/Total Population 



```r
l5_var <- c("B01001_003", "B01001_027")
l5_tot <- c("B01001_001")
vars %>% filter(name %in% c(l5_tot, l5_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B01001_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> SEX BY AGE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B01001_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Male:!!Under 5 years </td>
   <td style="text-align:left;"> SEX BY AGE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B01001_027 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Female:!!Under 5 years </td>
   <td style="text-align:left;"> SEX BY AGE </td>
  </tr>
</tbody>
</table>


```r
SVI[[2]] <- svi2_l5 <- comb(l5_var,l5_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi2_l5 <- readRDS("SVI.RDS")[[2]]
svi2_l5 %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 2253 </td>
   <td style="text-align:right;"> 209 </td>
   <td style="text-align:right;"> 62 </td>
   <td style="text-align:right;"> 44.28318 </td>
   <td style="text-align:right;"> 2.751886 </td>
   <td style="text-align:right;"> 1.948872 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 905 </td>
   <td style="text-align:right;"> 204 </td>
   <td style="text-align:right;"> 61 </td>
   <td style="text-align:right;"> 41.10961 </td>
   <td style="text-align:right;"> 6.740331 </td>
   <td style="text-align:right;"> 4.280866 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 826 </td>
   <td style="text-align:right;"> 182 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 27.00000 </td>
   <td style="text-align:right;"> 2.300242 </td>
   <td style="text-align:right;"> 3.229233 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1212 </td>
   <td style="text-align:right;"> 238 </td>
   <td style="text-align:right;"> 18 </td>
   <td style="text-align:right;"> 27.65863 </td>
   <td style="text-align:right;"> 1.485148 </td>
   <td style="text-align:right;"> 2.263354 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1310 </td>
   <td style="text-align:right;"> 297 </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:right;"> 40.02499 </td>
   <td style="text-align:right;"> 2.061069 </td>
   <td style="text-align:right;"> 3.019399 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 641 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2133 </td>
   <td style="text-align:right;"> 308 </td>
   <td style="text-align:right;"> 44 </td>
   <td style="text-align:right;"> 36.40055 </td>
   <td style="text-align:right;"> 2.062822 </td>
   <td style="text-align:right;"> 1.680346 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 962 </td>
   <td style="text-align:right;"> 208 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1016 </td>
   <td style="text-align:right;"> 166 </td>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 21.00000 </td>
   <td style="text-align:right;"> 1.968504 </td>
   <td style="text-align:right;"> 2.041752 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 3003 </td>
   <td style="text-align:right;"> 287 </td>
   <td style="text-align:right;"> 170 </td>
   <td style="text-align:right;"> 62.48200 </td>
   <td style="text-align:right;"> 5.661006 </td>
   <td style="text-align:right;"> 2.009080 </td>
  </tr>
</tbody>
</table>





## Elder Care Needs

### 3 Population 65 or above/Total Population







**C18130_016 has no data at block group level**


```r
vars %>% filter(grepl("POVERTY",concept),grepl("65 years and over",label)) %>% select(concept) %>% distinct() %>% # nest(-concept) # "65 YEARS AND OVER"
    kbl() %>% kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> POVERTY STATUS IN THE PAST 12 MONTHS BY HOUSEHOLD TYPE BY AGE OF HOUSEHOLDER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> AGE BY DISABILITY STATUS BY POVERTY STATUS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> AGE BY VETERAN STATUS BY POVERTY STATUS IN THE PAST 12 MONTHS BY DISABILITY STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> HEALTH INSURANCE COVERAGE STATUS BY RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS BY AGE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PRIVATE HEALTH INSURANCE BY RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS BY AGE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PUBLIC HEALTH INSURANCE BY RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS BY AGE </td>
  </tr>
</tbody>
</table>





```r
g65_var <- c("C21007_017")
g65_tot <- c("B01003_001")
vars %>% filter(name %in% c(g65_tot, g65_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B01003_001 </td>
   <td style="text-align:left;"> Estimate!!Total </td>
   <td style="text-align:left;"> TOTAL POPULATION </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C21007_017 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over: </td>
   <td style="text-align:left;"> AGE BY VETERAN STATUS BY POVERTY STATUS IN THE PAST 12 MONTHS BY DISABILITY STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER </td>
  </tr>
</tbody>
</table>


```r
SVI[[3]] <- svi3_g65 <- comb(g65_var,g65_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi3_g65 <- readRDS("SVI.RDS")[[3]]
svi3_g65 %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 2253 </td>
   <td style="text-align:right;"> 209 </td>
   <td style="text-align:right;"> 389 </td>
   <td style="text-align:right;"> 133 </td>
   <td style="text-align:right;"> 17.26587 </td>
   <td style="text-align:right;"> 5.681804 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 905 </td>
   <td style="text-align:right;"> 204 </td>
   <td style="text-align:right;"> 244 </td>
   <td style="text-align:right;"> 78 </td>
   <td style="text-align:right;"> 26.96133 </td>
   <td style="text-align:right;"> 6.111285 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 826 </td>
   <td style="text-align:right;"> 182 </td>
   <td style="text-align:right;"> 190 </td>
   <td style="text-align:right;"> 61 </td>
   <td style="text-align:right;"> 23.00242 </td>
   <td style="text-align:right;"> 5.371227 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1212 </td>
   <td style="text-align:right;"> 238 </td>
   <td style="text-align:right;"> 170 </td>
   <td style="text-align:right;"> 75 </td>
   <td style="text-align:right;"> 14.02640 </td>
   <td style="text-align:right;"> 5.541328 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1310 </td>
   <td style="text-align:right;"> 297 </td>
   <td style="text-align:right;"> 320 </td>
   <td style="text-align:right;"> 106 </td>
   <td style="text-align:right;"> 24.42748 </td>
   <td style="text-align:right;"> 5.899412 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 641 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 298 </td>
   <td style="text-align:right;"> 178 </td>
   <td style="text-align:right;"> 46.48986 </td>
   <td style="text-align:right;"> 24.231805 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2133 </td>
   <td style="text-align:right;"> 308 </td>
   <td style="text-align:right;"> 334 </td>
   <td style="text-align:right;"> 118 </td>
   <td style="text-align:right;"> 15.65870 </td>
   <td style="text-align:right;"> 5.048942 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 962 </td>
   <td style="text-align:right;"> 208 </td>
   <td style="text-align:right;"> 469 </td>
   <td style="text-align:right;"> 123 </td>
   <td style="text-align:right;"> 48.75260 </td>
   <td style="text-align:right;"> 7.236259 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1016 </td>
   <td style="text-align:right;"> 166 </td>
   <td style="text-align:right;"> 183 </td>
   <td style="text-align:right;"> 62 </td>
   <td style="text-align:right;"> 18.01181 </td>
   <td style="text-align:right;"> 5.345869 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 3003 </td>
   <td style="text-align:right;"> 287 </td>
   <td style="text-align:right;"> 406 </td>
   <td style="text-align:right;"> 74 </td>
   <td style="text-align:right;"> 13.51981 </td>
   <td style="text-align:right;"> 2.098276 </td>
  </tr>
</tbody>
</table>











### 4 Population 65 or above & below poverty/Pop. 65 or above



**C18130_018, C18130_021 have no data at block group level**




```r
g65_pov_var <- c("C21007_019","C21007_026")
g65_pov_tot <- c("C21007_017")
vars %>% filter(name %in% c(g65_pov_tot, g65_pov_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> C21007_017 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over: </td>
   <td style="text-align:left;"> AGE BY VETERAN STATUS BY POVERTY STATUS IN THE PAST 12 MONTHS BY DISABILITY STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C21007_019 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over:!!Veteran:!!Income in the past 12 months below poverty level: </td>
   <td style="text-align:left;"> AGE BY VETERAN STATUS BY POVERTY STATUS IN THE PAST 12 MONTHS BY DISABILITY STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C21007_026 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over:!!Nonveteran:!!Income in the past 12 months below poverty level: </td>
   <td style="text-align:left;"> AGE BY VETERAN STATUS BY POVERTY STATUS IN THE PAST 12 MONTHS BY DISABILITY STATUS FOR THE CIVILIAN POPULATION 18 YEARS AND OVER </td>
  </tr>
</tbody>
</table>


```r
SVI[[4]] <- svi4_g65_pov <- comb(g65_pov_var,g65_pov_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi4_g65_pov <- readRDS("SVI.RDS")[[4]]
svi4_g65_pov %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 389 </td>
   <td style="text-align:right;"> 133 </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 6.940874 </td>
   <td style="text-align:right;"> 10.269213 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 244 </td>
   <td style="text-align:right;"> 78 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 190 </td>
   <td style="text-align:right;"> 61 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 10.000000 </td>
   <td style="text-align:right;"> 9.470614 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 170 </td>
   <td style="text-align:right;"> 75 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 320 </td>
   <td style="text-align:right;"> 106 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 298 </td>
   <td style="text-align:right;"> 178 </td>
   <td style="text-align:right;"> 14 </td>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:right;"> 4.697987 </td>
   <td style="text-align:right;"> 7.189906 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 334 </td>
   <td style="text-align:right;"> 118 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 24 </td>
   <td style="text-align:right;"> 4.491018 </td>
   <td style="text-align:right;"> 7.008267 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 469 </td>
   <td style="text-align:right;"> 123 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 3.411514 </td>
   <td style="text-align:right;"> 5.254867 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 183 </td>
   <td style="text-align:right;"> 62 </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 14 </td>
   <td style="text-align:right;"> 4.918033 </td>
   <td style="text-align:right;"> 7.466619 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 406 </td>
   <td style="text-align:right;"> 74 </td>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 5.665025 </td>
   <td style="text-align:right;"> 8.558630 </td>
  </tr>
</tbody>
</table>






*B17017* is by **Householder** and gives same results.





## Transportation needs

### 5 Workers using public transportation/Civilian pop. 16+ and employed

"B23025_004" = "C24010_001"


```r
g16_tran_var <- c("B08301_010")
g16_tran_tot <- c("B23025_004")
vars %>% filter(name %in% c(g16_tran_tot, g16_tran_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B08301_010 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Public transportation (excluding taxicab): </td>
   <td style="text-align:left;"> MEANS OF TRANSPORTATION TO WORK </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B23025_004 </td>
   <td style="text-align:left;"> Estimate!!Total:!!In labor force:!!Civilian labor force:!!Employed </td>
   <td style="text-align:left;"> EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER </td>
  </tr>
</tbody>
</table>


```r
SVI[[5]] <- svi5_g16_tran <- comb(g16_tran_var,g16_tran_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi5_g16_tran <- readRDS("SVI.RDS")[[5]]
svi5_g16_tran %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1036 </td>
   <td style="text-align:right;"> 131 </td>
   <td style="text-align:right;"> 34 </td>
   <td style="text-align:right;"> 36 </td>
   <td style="text-align:right;"> 3.281853 </td>
   <td style="text-align:right;"> 3.450035 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 420 </td>
   <td style="text-align:right;"> 131 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 491 </td>
   <td style="text-align:right;"> 136 </td>
   <td style="text-align:right;"> 69 </td>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;"> 14.052953 </td>
   <td style="text-align:right;"> 7.156566 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 706 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:right;"> 2.124646 </td>
   <td style="text-align:right;"> 3.208816 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 664 </td>
   <td style="text-align:right;"> 169 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 197 </td>
   <td style="text-align:right;"> 124 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1194 </td>
   <td style="text-align:right;"> 271 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 1.340034 </td>
   <td style="text-align:right;"> 2.071595 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 493 </td>
   <td style="text-align:right;"> 162 </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 49 </td>
   <td style="text-align:right;"> 8.316430 </td>
   <td style="text-align:right;"> 9.556075 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 634 </td>
   <td style="text-align:right;"> 151 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 1.577287 </td>
   <td style="text-align:right;"> 2.495543 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1612 </td>
   <td style="text-align:right;"> 161 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:right;"> 1.178660 </td>
   <td style="text-align:right;"> 1.297400 </td>
  </tr>
</tbody>
</table>







### 6 Occupied housing units without a vehicle/Occupied housing units

*B08201_002* has no data at block group level



```r
noveh_var <- c("B25044_003","B25044_010")
noveh_tot <- c("B25044_001")
vars %>% filter(name %in% c(noveh_tot,noveh_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B25044_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> TENURE BY VEHICLES AVAILABLE </td>
  </tr>
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
</tbody>
</table>


```r
SVI[[6]] <- svi6_noveh <- comb(noveh_var,noveh_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi6_noveh<- readRDS("SVI.RDS")[[6]]
svi6_noveh %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 922 </td>
   <td style="text-align:right;"> 87 </td>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:right;"> 26.00000 </td>
   <td style="text-align:right;"> 2.494577 </td>
   <td style="text-align:right;"> 2.810115 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 369 </td>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 4.065041 </td>
   <td style="text-align:right;"> 4.542982 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 405 </td>
   <td style="text-align:right;"> 78 </td>
   <td style="text-align:right;"> 64 </td>
   <td style="text-align:right;"> 62.00000 </td>
   <td style="text-align:right;"> 15.802469 </td>
   <td style="text-align:right;"> 15.003066 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 579 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 508 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 112 </td>
   <td style="text-align:right;"> 67 </td>
   <td style="text-align:right;"> 82.86133 </td>
   <td style="text-align:right;"> 17.866667 </td>
   <td style="text-align:right;"> 21.442343 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 878 </td>
   <td style="text-align:right;"> 121 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 25.00000 </td>
   <td style="text-align:right;"> 1.822323 </td>
   <td style="text-align:right;"> 2.836283 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 44 </td>
   <td style="text-align:right;"> 42.01190 </td>
   <td style="text-align:right;"> 7.665505 </td>
   <td style="text-align:right;"> 7.208353 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 536 </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:right;"> 53 </td>
   <td style="text-align:right;"> 47.00000 </td>
   <td style="text-align:right;"> 9.888060 </td>
   <td style="text-align:right;"> 8.640398 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1177 </td>
   <td style="text-align:right;"> 88 </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 37.33631 </td>
   <td style="text-align:right;"> 2.548853 </td>
   <td style="text-align:right;"> 3.166429 </td>
  </tr>
</tbody>
</table>



## Temporary Shelter and housing recovery needs

### 7 Vacant Housing units/Total housing units



```r
vac_var <- c("B25002_003")
vac_tot <- c("B25002_001")
vars %>% filter(name %in% c(noveh_tot,noveh_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B25044_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> TENURE BY VEHICLES AVAILABLE </td>
  </tr>
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
</tbody>
</table>


```r
SVI[[7]] <- svi7_vac <- comb(vac_var,vac_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi7_vac<- readRDS("SVI.RDS")[[7]]
svi7_vac %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1003 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:right;"> 75 </td>
   <td style="text-align:right;"> 8.075773 </td>
   <td style="text-align:right;"> 7.434092 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 427 </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 58 </td>
   <td style="text-align:right;"> 54 </td>
   <td style="text-align:right;"> 13.583138 </td>
   <td style="text-align:right;"> 12.448787 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 444 </td>
   <td style="text-align:right;"> 84 </td>
   <td style="text-align:right;"> 39 </td>
   <td style="text-align:right;"> 59 </td>
   <td style="text-align:right;"> 8.783784 </td>
   <td style="text-align:right;"> 13.183969 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 579 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 570 </td>
   <td style="text-align:right;"> 106 </td>
   <td style="text-align:right;"> 62 </td>
   <td style="text-align:right;"> 74 </td>
   <td style="text-align:right;"> 10.877193 </td>
   <td style="text-align:right;"> 12.823905 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 112 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 916 </td>
   <td style="text-align:right;"> 128 </td>
   <td style="text-align:right;"> 38 </td>
   <td style="text-align:right;"> 58 </td>
   <td style="text-align:right;"> 4.148472 </td>
   <td style="text-align:right;"> 6.305285 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 596 </td>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;"> 60 </td>
   <td style="text-align:right;"> 61 </td>
   <td style="text-align:right;"> 10.067114 </td>
   <td style="text-align:right;"> 10.145303 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1208 </td>
   <td style="text-align:right;"> 92 </td>
   <td style="text-align:right;"> 31 </td>
   <td style="text-align:right;"> 48 </td>
   <td style="text-align:right;"> 2.566225 </td>
   <td style="text-align:right;"> 3.968701 </td>
  </tr>
</tbody>
</table>




### 8 Persons in renter occupied housing units/Total occupied housing units


**Change to 'renter occupied housing units/Total occupied housing units'**


```r
rent_var <- c("B25003_003")
rent_tot <- c("B25003_001")
vars %>% filter(name %in% c(rent_tot,rent_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B25003_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> TENURE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25003_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Renter occupied </td>
   <td style="text-align:left;"> TENURE </td>
  </tr>
</tbody>
</table>


```r
SVI[[8]] <- svi8_rent <- comb(rent_var,rent_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi8_rent<- readRDS("SVI.RDS")[[8]]
svi8_rent %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 922 </td>
   <td style="text-align:right;"> 87 </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:right;"> 1.843818 </td>
   <td style="text-align:right;"> 2.271003 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 369 </td>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:right;"> 42 </td>
   <td style="text-align:right;"> 31 </td>
   <td style="text-align:right;"> 11.382114 </td>
   <td style="text-align:right;"> 8.158325 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 405 </td>
   <td style="text-align:right;"> 78 </td>
   <td style="text-align:right;"> 199 </td>
   <td style="text-align:right;"> 74 </td>
   <td style="text-align:right;"> 49.135802 </td>
   <td style="text-align:right;"> 15.630085 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 579 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 140 </td>
   <td style="text-align:right;"> 75 </td>
   <td style="text-align:right;"> 24.179620 </td>
   <td style="text-align:right;"> 12.317354 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 508 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 22 </td>
   <td style="text-align:right;"> 34 </td>
   <td style="text-align:right;"> 4.330709 </td>
   <td style="text-align:right;"> 6.638398 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 112 </td>
   <td style="text-align:right;"> 131 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 34.933333 </td>
   <td style="text-align:right;"> 23.085092 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 878 </td>
   <td style="text-align:right;"> 121 </td>
   <td style="text-align:right;"> 161 </td>
   <td style="text-align:right;"> 109 </td>
   <td style="text-align:right;"> 18.337130 </td>
   <td style="text-align:right;"> 12.154651 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 396 </td>
   <td style="text-align:right;"> 86 </td>
   <td style="text-align:right;"> 68.989547 </td>
   <td style="text-align:right;"> 9.700719 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 536 </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:right;"> 326 </td>
   <td style="text-align:right;"> 74 </td>
   <td style="text-align:right;"> 60.820895 </td>
   <td style="text-align:right;"> 10.301764 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1177 </td>
   <td style="text-align:right;"> 88 </td>
   <td style="text-align:right;"> 272 </td>
   <td style="text-align:right;"> 78 </td>
   <td style="text-align:right;"> 23.109601 </td>
   <td style="text-align:right;"> 6.397812 </td>
  </tr>
</tbody>
</table>




### 9 Non-white population/Total population



```r
# white_var <- c("B02001_002")
white_tot <- c("B02001_001")
nonwhite_var <- paste0("B02001_00",3:8)
vars %>% filter(name %in% c(white_tot,nonwhite_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B02001_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> RACE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B02001_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Black or African American alone </td>
   <td style="text-align:left;"> RACE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B02001_004 </td>
   <td style="text-align:left;"> Estimate!!Total:!!American Indian and Alaska Native alone </td>
   <td style="text-align:left;"> RACE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B02001_005 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Asian alone </td>
   <td style="text-align:left;"> RACE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B02001_006 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Native Hawaiian and Other Pacific Islander alone </td>
   <td style="text-align:left;"> RACE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B02001_007 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Some other race alone </td>
   <td style="text-align:left;"> RACE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B02001_008 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Two or more races: </td>
   <td style="text-align:left;"> RACE </td>
  </tr>
</tbody>
</table>



```r
SVI[[9]] <- svi9_nonwhite <- comb(nonwhite_var,white_tot)
saveRDS(SVI,file = "SVI.RDS")
```


```r
svi9_nonwhite<- readRDS("SVI.RDS")[[9]]
svi9_nonwhite %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 2253 </td>
   <td style="text-align:right;"> 209 </td>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 173.24549 </td>
   <td style="text-align:right;"> 16.644474 </td>
   <td style="text-align:right;"> 7.532935 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 905 </td>
   <td style="text-align:right;"> 204 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 58.97457 </td>
   <td style="text-align:right;"> 10.497238 </td>
   <td style="text-align:right;"> 6.071745 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 826 </td>
   <td style="text-align:right;"> 182 </td>
   <td style="text-align:right;"> 198 </td>
   <td style="text-align:right;"> 180.59900 </td>
   <td style="text-align:right;"> 23.970944 </td>
   <td style="text-align:right;"> 21.216746 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1212 </td>
   <td style="text-align:right;"> 238 </td>
   <td style="text-align:right;"> 64 </td>
   <td style="text-align:right;"> 73.92564 </td>
   <td style="text-align:right;"> 5.280528 </td>
   <td style="text-align:right;"> 6.010687 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1310 </td>
   <td style="text-align:right;"> 297 </td>
   <td style="text-align:right;"> 108 </td>
   <td style="text-align:right;"> 102.08330 </td>
   <td style="text-align:right;"> 8.244275 </td>
   <td style="text-align:right;"> 7.565136 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 641 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2133 </td>
   <td style="text-align:right;"> 308 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 104.47966 </td>
   <td style="text-align:right;"> 8.766995 </td>
   <td style="text-align:right;"> 4.731835 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 962 </td>
   <td style="text-align:right;"> 208 </td>
   <td style="text-align:right;"> 52 </td>
   <td style="text-align:right;"> 83.00000 </td>
   <td style="text-align:right;"> 5.405405 </td>
   <td style="text-align:right;"> 8.548333 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1016 </td>
   <td style="text-align:right;"> 166 </td>
   <td style="text-align:right;"> 155 </td>
   <td style="text-align:right;"> 94.06912 </td>
   <td style="text-align:right;"> 15.255906 </td>
   <td style="text-align:right;"> 8.916939 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 3003 </td>
   <td style="text-align:right;"> 287 </td>
   <td style="text-align:right;"> 482 </td>
   <td style="text-align:right;"> 164.93332 </td>
   <td style="text-align:right;"> 16.050616 </td>
   <td style="text-align:right;"> 5.273719 </td>
  </tr>
</tbody>
</table>















### 10 Population in group quarters/Total population


```r
group_vars <- c("B01003_001","B26001_001")
vars %>% filter(name %in% group_vars) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B01003_001 </td>
   <td style="text-align:left;"> Estimate!!Total </td>
   <td style="text-align:left;"> TOTAL POPULATION </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B26001_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> GROUP QUARTERS POPULATION </td>
  </tr>
</tbody>
</table>



**B26--- has no data at block group level**




### 11 Housing units built 20 years ago/Total housing Units


```r
# newhou_var <- c("B25034_002","B25034_003","B25034_004")
newhou_tot <- c("B25034_001")
oldhou_var <- c(paste0("B25034_00",5:9),"B25034_010","B25034_011")
vars %>% filter(name %in% c(newhou_tot,oldhou_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B25034_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> YEAR STRUCTURE BUILT </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25034_005 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Built 1990 to 1999 </td>
   <td style="text-align:left;"> YEAR STRUCTURE BUILT </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25034_006 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Built 1980 to 1989 </td>
   <td style="text-align:left;"> YEAR STRUCTURE BUILT </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25034_007 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Built 1970 to 1979 </td>
   <td style="text-align:left;"> YEAR STRUCTURE BUILT </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25034_008 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Built 1960 to 1969 </td>
   <td style="text-align:left;"> YEAR STRUCTURE BUILT </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25034_009 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Built 1950 to 1959 </td>
   <td style="text-align:left;"> YEAR STRUCTURE BUILT </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25034_010 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Built 1940 to 1949 </td>
   <td style="text-align:left;"> YEAR STRUCTURE BUILT </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25034_011 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Built 1939 or earlier </td>
   <td style="text-align:left;"> YEAR STRUCTURE BUILT </td>
  </tr>
</tbody>
</table>


```r
SVI[[11]] <- svi11_oldhou <- comb(oldhou_var,newhou_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi11_oldhou<- readRDS("SVI.RDS")[[11]]
svi11_oldhou %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1003 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 756 </td>
   <td style="text-align:right;"> 129.24396 </td>
   <td style="text-align:right;"> 75.37388 </td>
   <td style="text-align:right;"> 10.46754 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 427 </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 293 </td>
   <td style="text-align:right;"> 81.59044 </td>
   <td style="text-align:right;"> 68.61827 </td>
   <td style="text-align:right;"> 15.44576 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 444 </td>
   <td style="text-align:right;"> 84 </td>
   <td style="text-align:right;"> 321 </td>
   <td style="text-align:right;"> 109.41663 </td>
   <td style="text-align:right;"> 72.29730 </td>
   <td style="text-align:right;"> 20.49908 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 579 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 465 </td>
   <td style="text-align:right;"> 122.54387 </td>
   <td style="text-align:right;"> 80.31088 </td>
   <td style="text-align:right;"> 16.45102 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 570 </td>
   <td style="text-align:right;"> 106 </td>
   <td style="text-align:right;"> 491 </td>
   <td style="text-align:right;"> 145.84924 </td>
   <td style="text-align:right;"> 86.14035 </td>
   <td style="text-align:right;"> 19.95278 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 112 </td>
   <td style="text-align:right;"> 268 </td>
   <td style="text-align:right;"> 121.90570 </td>
   <td style="text-align:right;"> 71.46667 </td>
   <td style="text-align:right;"> 24.51909 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 916 </td>
   <td style="text-align:right;"> 128 </td>
   <td style="text-align:right;"> 863 </td>
   <td style="text-align:right;"> 200.09498 </td>
   <td style="text-align:right;"> 94.21397 </td>
   <td style="text-align:right;"> 17.43143 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 549 </td>
   <td style="text-align:right;"> 139.67820 </td>
   <td style="text-align:right;"> 95.64460 </td>
   <td style="text-align:right;"> 18.48171 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 596 </td>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;"> 492 </td>
   <td style="text-align:right;"> 122.01639 </td>
   <td style="text-align:right;"> 82.55034 </td>
   <td style="text-align:right;"> 17.21470 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1208 </td>
   <td style="text-align:right;"> 92 </td>
   <td style="text-align:right;"> 1069 </td>
   <td style="text-align:right;"> 148.85228 </td>
   <td style="text-align:right;"> 88.49338 </td>
   <td style="text-align:right;"> 10.31577 </td>
  </tr>
</tbody>
</table>





### 12 Mobile Homes/Total housing units


```r
mhou_var <- c("B25024_010")
mhou_tot <- c("B25024_001")
vars %>% filter(name %in% c(mhou_tot,mhou_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B25024_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> UNITS IN STRUCTURE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25024_010 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Mobile home </td>
   <td style="text-align:left;"> UNITS IN STRUCTURE </td>
  </tr>
</tbody>
</table>


```r
SVI[[12]] <- svi12_mhou <- comb(mhou_var,mhou_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi12_mhou<- readRDS("SVI.RDS")[[12]]
svi12_mhou %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1003 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 427 </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 444 </td>
   <td style="text-align:right;"> 84 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 579 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:right;"> 2.590674 </td>
   <td style="text-align:right;"> 3.949074 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 570 </td>
   <td style="text-align:right;"> 106 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 112 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 916 </td>
   <td style="text-align:right;"> 128 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 596 </td>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1208 </td>
   <td style="text-align:right;"> 92 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
</tbody>
</table>





### 13 Persons in poverty/Total population

"B17001_001" (county level)= "B17020_002" (tract level)= "C17002_002" + "C17002_003"


```r
pov_var <- c("C17002_002","C17002_003")
pov_tot <- c("C17002_001")
vars %>% filter(name %in% c(pov_tot,pov_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> C17002_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C17002_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Under .50 </td>
   <td style="text-align:left;"> RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C17002_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!.50 to .99 </td>
   <td style="text-align:left;"> RATIO OF INCOME TO POVERTY LEVEL IN THE PAST 12 MONTHS </td>
  </tr>
</tbody>
</table>


```r
SVI[[13]] <- svi13_pov <- comb(pov_var,pov_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi13_pov <- readRDS("SVI.RDS")[[13]]
svi13_pov %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 2253 </td>
   <td style="text-align:right;"> 209 </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:right;"> 41.00000 </td>
   <td style="text-align:right;"> 1.1984021 </td>
   <td style="text-align:right;"> 1.816397 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 905 </td>
   <td style="text-align:right;"> 204 </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 14.00000 </td>
   <td style="text-align:right;"> 0.9944751 </td>
   <td style="text-align:right;"> 1.530633 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 815 </td>
   <td style="text-align:right;"> 182 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 17.69181 </td>
   <td style="text-align:right;"> 2.3312883 </td>
   <td style="text-align:right;"> 2.107422 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1212 </td>
   <td style="text-align:right;"> 238 </td>
   <td style="text-align:right;"> 101 </td>
   <td style="text-align:right;"> 97.67292 </td>
   <td style="text-align:right;"> 8.3333333 </td>
   <td style="text-align:right;"> 7.890929 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1310 </td>
   <td style="text-align:right;"> 297 </td>
   <td style="text-align:right;"> 26 </td>
   <td style="text-align:right;"> 39.00000 </td>
   <td style="text-align:right;"> 1.9847328 </td>
   <td style="text-align:right;"> 2.942897 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 641 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 86 </td>
   <td style="text-align:right;"> 115.31695 </td>
   <td style="text-align:right;"> 13.4165367 </td>
   <td style="text-align:right;"> 17.559226 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2133 </td>
   <td style="text-align:right;"> 308 </td>
   <td style="text-align:right;"> 44 </td>
   <td style="text-align:right;"> 40.00000 </td>
   <td style="text-align:right;"> 2.0628223 </td>
   <td style="text-align:right;"> 1.851486 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 962 </td>
   <td style="text-align:right;"> 208 </td>
   <td style="text-align:right;"> 91 </td>
   <td style="text-align:right;"> 85.14693 </td>
   <td style="text-align:right;"> 9.4594595 </td>
   <td style="text-align:right;"> 8.611479 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1016 </td>
   <td style="text-align:right;"> 166 </td>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;"> 27.00000 </td>
   <td style="text-align:right;"> 3.9370079 </td>
   <td style="text-align:right;"> 2.578455 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2994 </td>
   <td style="text-align:right;"> 288 </td>
   <td style="text-align:right;"> 228 </td>
   <td style="text-align:right;"> 134.33168 </td>
   <td style="text-align:right;"> 7.6152305 </td>
   <td style="text-align:right;"> 4.426494 </td>
  </tr>
</tbody>
</table>




## Civic Capacity needs

### 14 Occupied housing units without a telephone/Total occupied Husing


```r
nophone_var <- c("B25043_007","B25043_016")
nophone_tot <- c("B25043_001")
vars %>% filter(name %in% c(nophone_tot,nophone_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B25043_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> TENURE BY TELEPHONE SERVICE AVAILABLE BY AGE OF HOUSEHOLDER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25043_007 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Owner occupied:!!No telephone service available: </td>
   <td style="text-align:left;"> TENURE BY TELEPHONE SERVICE AVAILABLE BY AGE OF HOUSEHOLDER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25043_016 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Renter occupied:!!No telephone service available: </td>
   <td style="text-align:left;"> TENURE BY TELEPHONE SERVICE AVAILABLE BY AGE OF HOUSEHOLDER </td>
  </tr>
</tbody>
</table>


```r
SVI[[14]] <- svi14_nophone <- comb(nophone_var,nophone_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi14_nophone <- readRDS("SVI.RDS")[[14]]
svi14_nophone %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 922 </td>
   <td style="text-align:right;"> 87 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 0.7592191 </td>
   <td style="text-align:right;"> 1.190906 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 369 </td>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 1.8970190 </td>
   <td style="text-align:right;"> 2.962241 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 405 </td>
   <td style="text-align:right;"> 78 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 579 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 508 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 112 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 878 </td>
   <td style="text-align:right;"> 121 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 536 </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1177 </td>
   <td style="text-align:right;"> 88 </td>
   <td style="text-align:right;"> 36 </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 3.0586236 </td>
   <td style="text-align:right;"> 3.475918 </td>
  </tr>
</tbody>
</table>





### 15 Population above 25 with less than high school/Total pop above 25





**B160, B200, B210, C150 have no data at block group level**



```r
noedu_var <- c(paste0("B15003_00",2:9),paste0("B15003_01",0:6))
noedu_tot <- c("B15003_001")
vars %>% filter(name %in% c(noedu_tot,noedu_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B15003_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!No schooling completed </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Nursery school </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_004 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Kindergarten </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_005 </td>
   <td style="text-align:left;"> Estimate!!Total:!!1st grade </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_006 </td>
   <td style="text-align:left;"> Estimate!!Total:!!2nd grade </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_007 </td>
   <td style="text-align:left;"> Estimate!!Total:!!3rd grade </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_008 </td>
   <td style="text-align:left;"> Estimate!!Total:!!4th grade </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_009 </td>
   <td style="text-align:left;"> Estimate!!Total:!!5th grade </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_010 </td>
   <td style="text-align:left;"> Estimate!!Total:!!6th grade </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_011 </td>
   <td style="text-align:left;"> Estimate!!Total:!!7th grade </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_012 </td>
   <td style="text-align:left;"> Estimate!!Total:!!8th grade </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_013 </td>
   <td style="text-align:left;"> Estimate!!Total:!!9th grade </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_014 </td>
   <td style="text-align:left;"> Estimate!!Total:!!10th grade </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_015 </td>
   <td style="text-align:left;"> Estimate!!Total:!!11th grade </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B15003_016 </td>
   <td style="text-align:left;"> Estimate!!Total:!!12th grade, no diploma </td>
   <td style="text-align:left;"> EDUCATIONAL ATTAINMENT FOR THE POPULATION 25 YEARS AND OVER </td>
  </tr>
</tbody>
</table>


```r
SVI[[15]] <- svi15_noedu <- comb(noedu_var,noedu_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi15_noedu <- readRDS("SVI.RDS")[[15]]
svi15_noedu %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1655 </td>
   <td style="text-align:right;"> 160 </td>
   <td style="text-align:right;"> 24 </td>
   <td style="text-align:right;"> 27.31300 </td>
   <td style="text-align:right;"> 1.450151 </td>
   <td style="text-align:right;"> 1.644367 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 675 </td>
   <td style="text-align:right;"> 129 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 18.00000 </td>
   <td style="text-align:right;"> 1.777778 </td>
   <td style="text-align:right;"> 2.644935 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 690 </td>
   <td style="text-align:right;"> 133 </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 65.71149 </td>
   <td style="text-align:right;"> 10.434783 </td>
   <td style="text-align:right;"> 9.308584 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 955 </td>
   <td style="text-align:right;"> 198 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 977 </td>
   <td style="text-align:right;"> 199 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 558 </td>
   <td style="text-align:right;"> 181 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1544 </td>
   <td style="text-align:right;"> 236 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 770 </td>
   <td style="text-align:right;"> 153 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 25.00000 </td>
   <td style="text-align:right;"> 2.077922 </td>
   <td style="text-align:right;"> 3.220393 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 845 </td>
   <td style="text-align:right;"> 149 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2087 </td>
   <td style="text-align:right;"> 130 </td>
   <td style="text-align:right;"> 47 </td>
   <td style="text-align:right;"> 31.68596 </td>
   <td style="text-align:right;"> 2.252036 </td>
   <td style="text-align:right;"> 1.511759 </td>
  </tr>
</tbody>
</table>




### 16 Population 16+ in labor force and unemployed/Pop in Labor force 16+



```r
unemp_var <- c("B23025_005")
unemp_tot <- c("B23025_002")
vars %>% filter(name %in% c(unemp_tot,unemp_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B23025_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!In labor force: </td>
   <td style="text-align:left;"> EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B23025_005 </td>
   <td style="text-align:left;"> Estimate!!Total:!!In labor force:!!Civilian labor force:!!Unemployed </td>
   <td style="text-align:left;"> EMPLOYMENT STATUS FOR THE POPULATION 16 YEARS AND OVER </td>
  </tr>
</tbody>
</table>


```r
SVI[[16]] <- svi16_unemp <- comb(unemp_var,unemp_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi16_unemp <- readRDS("SVI.RDS")[[16]]
svi16_unemp %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1062 </td>
   <td style="text-align:right;"> 138 </td>
   <td style="text-align:right;"> 26 </td>
   <td style="text-align:right;"> 42 </td>
   <td style="text-align:right;"> 2.448211 </td>
   <td style="text-align:right;"> 3.941986 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 429 </td>
   <td style="text-align:right;"> 134 </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 2.097902 </td>
   <td style="text-align:right;"> 3.434550 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 491 </td>
   <td style="text-align:right;"> 136 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 725 </td>
   <td style="text-align:right;"> 193 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 29 </td>
   <td style="text-align:right;"> 2.620690 </td>
   <td style="text-align:right;"> 3.938692 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 694 </td>
   <td style="text-align:right;"> 177 </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 4.322767 </td>
   <td style="text-align:right;"> 4.921245 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 208 </td>
   <td style="text-align:right;"> 123 </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 5.288462 </td>
   <td style="text-align:right;"> 7.551100 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1212 </td>
   <td style="text-align:right;"> 269 </td>
   <td style="text-align:right;"> 18 </td>
   <td style="text-align:right;"> 29 </td>
   <td style="text-align:right;"> 1.485148 </td>
   <td style="text-align:right;"> 2.369926 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 493 </td>
   <td style="text-align:right;"> 162 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 687 </td>
   <td style="text-align:right;"> 154 </td>
   <td style="text-align:right;"> 53 </td>
   <td style="text-align:right;"> 52 </td>
   <td style="text-align:right;"> 7.714702 </td>
   <td style="text-align:right;"> 7.368938 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1741 </td>
   <td style="text-align:right;"> 182 </td>
   <td style="text-align:right;"> 115 </td>
   <td style="text-align:right;"> 57 </td>
   <td style="text-align:right;"> 6.605399 </td>
   <td style="text-align:right;"> 3.200334 </td>
  </tr>
</tbody>
</table>




### 17 Population above 5 that speak English not well or not at all/Pop>5









**B06007, C16001 have no data at block group level**



```r
esl_var <- (vars %>% filter(grepl("B16004_",name),grepl("Speak English \"not well\"|Speak English \"not at all\"",label)))$name
esl_tot <- c("B16004_001")
vars %>% filter(name %in% c(esl_tot,esl_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B16004_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_007 </td>
   <td style="text-align:left;"> Estimate!!Total:!!5 to 17 years:!!Speak Spanish:!!Speak English "not well" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_008 </td>
   <td style="text-align:left;"> Estimate!!Total:!!5 to 17 years:!!Speak Spanish:!!Speak English "not at all" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_012 </td>
   <td style="text-align:left;"> Estimate!!Total:!!5 to 17 years:!!Speak other Indo-European languages:!!Speak English "not well" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_013 </td>
   <td style="text-align:left;"> Estimate!!Total:!!5 to 17 years:!!Speak other Indo-European languages:!!Speak English "not at all" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_017 </td>
   <td style="text-align:left;"> Estimate!!Total:!!5 to 17 years:!!Speak Asian and Pacific Island languages:!!Speak English "not well" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_018 </td>
   <td style="text-align:left;"> Estimate!!Total:!!5 to 17 years:!!Speak Asian and Pacific Island languages:!!Speak English "not at all" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_022 </td>
   <td style="text-align:left;"> Estimate!!Total:!!5 to 17 years:!!Speak other languages:!!Speak English "not well" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_023 </td>
   <td style="text-align:left;"> Estimate!!Total:!!5 to 17 years:!!Speak other languages:!!Speak English "not at all" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_029 </td>
   <td style="text-align:left;"> Estimate!!Total:!!18 to 64 years:!!Speak Spanish:!!Speak English "not well" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_030 </td>
   <td style="text-align:left;"> Estimate!!Total:!!18 to 64 years:!!Speak Spanish:!!Speak English "not at all" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_034 </td>
   <td style="text-align:left;"> Estimate!!Total:!!18 to 64 years:!!Speak other Indo-European languages:!!Speak English "not well" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_035 </td>
   <td style="text-align:left;"> Estimate!!Total:!!18 to 64 years:!!Speak other Indo-European languages:!!Speak English "not at all" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_039 </td>
   <td style="text-align:left;"> Estimate!!Total:!!18 to 64 years:!!Speak Asian and Pacific Island languages:!!Speak English "not well" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_040 </td>
   <td style="text-align:left;"> Estimate!!Total:!!18 to 64 years:!!Speak Asian and Pacific Island languages:!!Speak English "not at all" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_044 </td>
   <td style="text-align:left;"> Estimate!!Total:!!18 to 64 years:!!Speak other languages:!!Speak English "not well" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_045 </td>
   <td style="text-align:left;"> Estimate!!Total:!!18 to 64 years:!!Speak other languages:!!Speak English "not at all" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_051 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over:!!Speak Spanish:!!Speak English "not well" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_052 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over:!!Speak Spanish:!!Speak English "not at all" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_056 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over:!!Speak other Indo-European languages:!!Speak English "not well" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_057 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over:!!Speak other Indo-European languages:!!Speak English "not at all" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_061 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over:!!Speak Asian and Pacific Island languages:!!Speak English "not well" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_062 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over:!!Speak Asian and Pacific Island languages:!!Speak English "not at all" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_066 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over:!!Speak other languages:!!Speak English "not well" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B16004_067 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over:!!Speak other languages:!!Speak English "not at all" </td>
   <td style="text-align:left;"> AGE BY LANGUAGE SPOKEN AT HOME BY ABILITY TO SPEAK ENGLISH FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
</tbody>
</table>


```r
SVI[[17]] <- svi17_esl <- comb(esl_var,esl_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi17_esl <- readRDS("SVI.RDS")[[17]]
svi17_esl %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 2191 </td>
   <td style="text-align:right;"> 211 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 16.00000 </td>
   <td style="text-align:right;"> 0.4564126 </td>
   <td style="text-align:right;"> 0.7289362 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 844 </td>
   <td style="text-align:right;"> 189 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 11.00000 </td>
   <td style="text-align:right;"> 0.7109005 </td>
   <td style="text-align:right;"> 1.2935585 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 807 </td>
   <td style="text-align:right;"> 185 </td>
   <td style="text-align:right;"> 56 </td>
   <td style="text-align:right;"> 89.00000 </td>
   <td style="text-align:right;"> 6.9392813 </td>
   <td style="text-align:right;"> 10.9131670 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1194 </td>
   <td style="text-align:right;"> 231 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1283 </td>
   <td style="text-align:right;"> 283 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 641 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2089 </td>
   <td style="text-align:right;"> 302 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 962 </td>
   <td style="text-align:right;"> 208 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 996 </td>
   <td style="text-align:right;"> 160 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2833 </td>
   <td style="text-align:right;"> 280 </td>
   <td style="text-align:right;"> 36 </td>
   <td style="text-align:right;"> 42.80187 </td>
   <td style="text-align:right;"> 1.2707377 </td>
   <td style="text-align:right;"> 1.5056027 </td>
  </tr>
</tbody>
</table>






## Disability

### Population with a disability/Total Population ( all age)





**C18130_003, C18130_010, C18130_017 have no data at block group level**






**Change to 'Population with a disability (20-64 years)/Total Population (20-64 years)'**



```r
dis_var <- c("B23024_003","B23024_018")
dis_tot <- c("B23024_001")
vars %>% filter(name %in% c(dis_tot,dis_var)) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:left;"> concept </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> B23024_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> POVERTY STATUS IN THE PAST 12 MONTHS BY DISABILITY STATUS BY EMPLOYMENT STATUS FOR THE POPULATION 20 TO 64 YEARS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B23024_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Income in the past 12 months below poverty level:!!With a disability: </td>
   <td style="text-align:left;"> POVERTY STATUS IN THE PAST 12 MONTHS BY DISABILITY STATUS BY EMPLOYMENT STATUS FOR THE POPULATION 20 TO 64 YEARS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B23024_018 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Income in the past 12 months at or above poverty level:!!With a disability: </td>
   <td style="text-align:left;"> POVERTY STATUS IN THE PAST 12 MONTHS BY DISABILITY STATUS BY EMPLOYMENT STATUS FOR THE POPULATION 20 TO 64 YEARS </td>
  </tr>
</tbody>
</table>


```r
SVI[[18]] <- svi18_dis <- comb(dis_var,dis_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi18_dis <- readRDS("SVI.RDS")[[18]]
svi18_dis %>% select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  head(10) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1276 </td>
   <td style="text-align:right;"> 183 </td>
   <td style="text-align:right;"> 13 </td>
   <td style="text-align:right;"> 16.00000 </td>
   <td style="text-align:right;"> 1.018809 </td>
   <td style="text-align:right;"> 1.245376 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 463 </td>
   <td style="text-align:right;"> 147 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 18.00000 </td>
   <td style="text-align:right;"> 2.591793 </td>
   <td style="text-align:right;"> 3.799604 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 510 </td>
   <td style="text-align:right;"> 136 </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 13.00000 </td>
   <td style="text-align:right;"> 1.568628 </td>
   <td style="text-align:right;"> 2.514463 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 841 </td>
   <td style="text-align:right;"> 205 </td>
   <td style="text-align:right;"> 53 </td>
   <td style="text-align:right;"> 62.00000 </td>
   <td style="text-align:right;"> 6.302021 </td>
   <td style="text-align:right;"> 7.210352 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 734 </td>
   <td style="text-align:right;"> 221 </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 39.00000 </td>
   <td style="text-align:right;"> 4.768392 </td>
   <td style="text-align:right;"> 5.115704 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 260 </td>
   <td style="text-align:right;"> 122 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1370 </td>
   <td style="text-align:right;"> 284 </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:right;"> 54.00000 </td>
   <td style="text-align:right;"> 5.912409 </td>
   <td style="text-align:right;"> 3.746207 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 376 </td>
   <td style="text-align:right;"> 158 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00000 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 724 </td>
   <td style="text-align:right;"> 151 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 20.00000 </td>
   <td style="text-align:right;"> 2.209945 </td>
   <td style="text-align:right;"> 2.723708 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1835 </td>
   <td style="text-align:right;"> 149 </td>
   <td style="text-align:right;"> 144 </td>
   <td style="text-align:right;"> 62.64982 </td>
   <td style="text-align:right;"> 7.847411 </td>
   <td style="text-align:right;"> 3.354170 </td>
  </tr>
</tbody>
</table>







```r
countna <- function(x){
  sum(is.na(x))
}
SVI <- readRDS("SVI.RDS")
lapply(SVI, countna) %>% as_vector() 
```

```
##                                                       
##  3  0 16  2  1  1  0  0  0  0  3  0  0  0  0  0  0  0
```

```r
SVI[[3]] %>% filter(is.na(per.moe)) %>% 
  select(summary_est, summary_moe, comb.e,comb.moe,per.e,per.moe) %>% 
  kbl() %>% kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> comb.e </th>
   <th style="text-align:right;"> comb.moe </th>
   <th style="text-align:right;"> per.e </th>
   <th style="text-align:right;"> per.moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 2735 </td>
   <td style="text-align:right;"> 594 </td>
   <td style="text-align:right;"> 733 </td>
   <td style="text-align:right;"> 157 </td>
   <td style="text-align:right;"> 26.80073 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1466 </td>
   <td style="text-align:right;"> 403 </td>
   <td style="text-align:right;"> 518 </td>
   <td style="text-align:right;"> 133 </td>
   <td style="text-align:right;"> 35.33424 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1894 </td>
   <td style="text-align:right;"> 365 </td>
   <td style="text-align:right;"> 316 </td>
   <td style="text-align:right;"> 55 </td>
   <td style="text-align:right;"> 16.68427 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1485 </td>
   <td style="text-align:right;"> 277 </td>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 73 </td>
   <td style="text-align:right;"> 38.65320 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 825 </td>
   <td style="text-align:right;"> 415 </td>
   <td style="text-align:right;"> 249 </td>
   <td style="text-align:right;"> 94 </td>
   <td style="text-align:right;"> 30.18182 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 863 </td>
   <td style="text-align:right;"> 189 </td>
   <td style="text-align:right;"> 412 </td>
   <td style="text-align:right;"> 90 </td>
   <td style="text-align:right;"> 47.74044 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1674 </td>
   <td style="text-align:right;"> 600 </td>
   <td style="text-align:right;"> 387 </td>
   <td style="text-align:right;"> 115 </td>
   <td style="text-align:right;"> 23.11828 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1978 </td>
   <td style="text-align:right;"> 599 </td>
   <td style="text-align:right;"> 451 </td>
   <td style="text-align:right;"> 109 </td>
   <td style="text-align:right;"> 22.80081 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 990 </td>
   <td style="text-align:right;"> 263 </td>
   <td style="text-align:right;"> 705 </td>
   <td style="text-align:right;"> 153 </td>
   <td style="text-align:right;"> 71.21212 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 884 </td>
   <td style="text-align:right;"> 181 </td>
   <td style="text-align:right;"> 545 </td>
   <td style="text-align:right;"> 111 </td>
   <td style="text-align:right;"> 61.65158 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2410 </td>
   <td style="text-align:right;"> 768 </td>
   <td style="text-align:right;"> 380 </td>
   <td style="text-align:right;"> 104 </td>
   <td style="text-align:right;"> 15.76763 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1667 </td>
   <td style="text-align:right;"> 580 </td>
   <td style="text-align:right;"> 267 </td>
   <td style="text-align:right;"> 91 </td>
   <td style="text-align:right;"> 16.01680 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1122 </td>
   <td style="text-align:right;"> 470 </td>
   <td style="text-align:right;"> 244 </td>
   <td style="text-align:right;"> 94 </td>
   <td style="text-align:right;"> 21.74688 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 856 </td>
   <td style="text-align:right;"> 389 </td>
   <td style="text-align:right;"> 184 </td>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;"> 21.49533 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2122 </td>
   <td style="text-align:right;"> 425 </td>
   <td style="text-align:right;"> 525 </td>
   <td style="text-align:right;"> 103 </td>
   <td style="text-align:right;"> 24.74081 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2702 </td>
   <td style="text-align:right;"> 773 </td>
   <td style="text-align:right;"> 492 </td>
   <td style="text-align:right;"> 131 </td>
   <td style="text-align:right;"> 18.20873 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
</tbody>
</table>



<script src="//yihui.org/js/math-code.js"></script>
<script async
  src="//mathjax.rstudio.com/latest/MathJax.js?config=TeX-MML-AM_CHTML">
</script>


\(\begin{equation}Y=X_1+X_2,\quad X_1 \perp X_2\end{equation}\)


\(\begin{equation}
\text{MOE}(Y)=\text{MOE}(X_1+ X_2)=\sqrt{\text{MOE}(X_1)^2+\text{MOE}(X_2)^2}
\end{equation}\)

\[\begin{equation}
\text{MOE}(X_1/Y)=\frac1Y\sqrt{\text{MOE}(X_1)^2-\text{MOE}(Y)^2\cdot X_1^2/Y^2}
\end{equation}\]


\[\begin{equation}
\text{MOE}(X_2)=\text{MOE}(Y - X_1)=\sqrt{\text{MOE}(Y)^2-\text{MOE}(X_1)^2}
\end{equation}\]

\[\begin{equation}
\text{MOE}(1-X_1/Y)=\frac1Y\sqrt{\text{MOE}(X_2)^2-\text{MOE}(Y)^2\cdot X_2^2/Y^2}
\end{equation}\]


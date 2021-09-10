---
title: "4 Social Vulnerability Index (BG)"
date: "2021-09-09"
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



Block Group Level

<!-- #  {.tabset .tabset-fade .tabset-pills} -->





```r
pdx_bg <- block_groups(state = "41",county = tri_cou, cb = FALSE, year = 2019)
# pdx_bg <- pdx_bg %>% filter(str_sub(GEOID10, 1, 5)  %in% tri_cou)
saveRDS(pdx_bg,file = "pdx_bg.RDS")
```






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
svi1_child %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
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
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 7.058823 </td>
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
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 5.063291 </td>
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
  <tr>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 159 </td>
   <td style="text-align:right;"> 104 </td>
   <td style="text-align:right;"> 42.400000 </td>
   <td style="text-align:right;"> 17.946911 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 43 </td>
   <td style="text-align:right;"> 47 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 27.906977 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 659 </td>
   <td style="text-align:right;"> 160 </td>
   <td style="text-align:right;"> 67 </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 10.166920 </td>
   <td style="text-align:right;"> 10.331357 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 703 </td>
   <td style="text-align:right;"> 173 </td>
   <td style="text-align:right;"> 126 </td>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 17.923186 </td>
   <td style="text-align:right;"> 15.012713 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 288 </td>
   <td style="text-align:right;"> 107 </td>
   <td style="text-align:right;"> 99 </td>
   <td style="text-align:right;"> 78 </td>
   <td style="text-align:right;"> 34.375000 </td>
   <td style="text-align:right;"> 23.883083 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 440 </td>
   <td style="text-align:right;"> 139 </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 6.818182 </td>
   <td style="text-align:right;"> 7.657375 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 372 </td>
   <td style="text-align:right;"> 170 </td>
   <td style="text-align:right;"> 22 </td>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 5.913978 </td>
   <td style="text-align:right;"> 6.153048 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 200 </td>
   <td style="text-align:right;"> 123 </td>
   <td style="text-align:right;"> 55 </td>
   <td style="text-align:right;"> 63 </td>
   <td style="text-align:right;"> 27.500000 </td>
   <td style="text-align:right;"> 26.574750 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 362 </td>
   <td style="text-align:right;"> 131 </td>
   <td style="text-align:right;"> 28 </td>
   <td style="text-align:right;"> 43 </td>
   <td style="text-align:right;"> 7.734807 </td>
   <td style="text-align:right;"> 11.543956 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 418 </td>
   <td style="text-align:right;"> 161 </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 1.913876 </td>
   <td style="text-align:right;"> 2.022986 </td>
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
svi2_l5 %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
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
   <td style="text-align:right;"> 29.54657 </td>
   <td style="text-align:right;"> 2.300242 </td>
   <td style="text-align:right;"> 3.540979 </td>
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
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 2.647514 </td>
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
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.764092 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1016 </td>
   <td style="text-align:right;"> 166 </td>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 24.18677 </td>
   <td style="text-align:right;"> 1.968504 </td>
   <td style="text-align:right;"> 2.358761 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 3003 </td>
   <td style="text-align:right;"> 287 </td>
   <td style="text-align:right;"> 170 </td>
   <td style="text-align:right;"> 62.48200 </td>
   <td style="text-align:right;"> 5.661006 </td>
   <td style="text-align:right;"> 2.009080 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2371 </td>
   <td style="text-align:right;"> 432 </td>
   <td style="text-align:right;"> 49 </td>
   <td style="text-align:right;"> 63.32456 </td>
   <td style="text-align:right;"> 2.066638 </td>
   <td style="text-align:right;"> 2.644118 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 993 </td>
   <td style="text-align:right;"> 273 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.709019 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2748 </td>
   <td style="text-align:right;"> 340 </td>
   <td style="text-align:right;"> 201 </td>
   <td style="text-align:right;"> 129.54150 </td>
   <td style="text-align:right;"> 7.314411 </td>
   <td style="text-align:right;"> 4.626345 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2286 </td>
   <td style="text-align:right;"> 341 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 106.77547 </td>
   <td style="text-align:right;"> 8.180228 </td>
   <td style="text-align:right;"> 4.508636 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1222 </td>
   <td style="text-align:right;"> 215 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 86.03488 </td>
   <td style="text-align:right;"> 8.183306 </td>
   <td style="text-align:right;"> 6.891708 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2189 </td>
   <td style="text-align:right;"> 297 </td>
   <td style="text-align:right;"> 92 </td>
   <td style="text-align:right;"> 71.58911 </td>
   <td style="text-align:right;"> 4.202832 </td>
   <td style="text-align:right;"> 3.220305 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1495 </td>
   <td style="text-align:right;"> 386 </td>
   <td style="text-align:right;"> 56 </td>
   <td style="text-align:right;"> 54.56189 </td>
   <td style="text-align:right;"> 3.745819 </td>
   <td style="text-align:right;"> 3.519146 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1001 </td>
   <td style="text-align:right;"> 291 </td>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 43.56604 </td>
   <td style="text-align:right;"> 4.995005 </td>
   <td style="text-align:right;"> 4.102867 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1739 </td>
   <td style="text-align:right;"> 323 </td>
   <td style="text-align:right;"> 117 </td>
   <td style="text-align:right;"> 57.28001 </td>
   <td style="text-align:right;"> 6.728005 </td>
   <td style="text-align:right;"> 3.047590 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1818 </td>
   <td style="text-align:right;"> 304 </td>
   <td style="text-align:right;"> 128 </td>
   <td style="text-align:right;"> 86.53901 </td>
   <td style="text-align:right;"> 7.040704 </td>
   <td style="text-align:right;"> 4.612230 </td>
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
svi3_g65 %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 2253 </td>
   <td style="text-align:right;"> 209 </td>
   <td style="text-align:right;"> 389 </td>
   <td style="text-align:right;"> 133 </td>
   <td style="text-align:right;"> 17.265868 </td>
   <td style="text-align:right;"> 5.681804 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 905 </td>
   <td style="text-align:right;"> 204 </td>
   <td style="text-align:right;"> 244 </td>
   <td style="text-align:right;"> 78 </td>
   <td style="text-align:right;"> 26.961326 </td>
   <td style="text-align:right;"> 6.111285 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 826 </td>
   <td style="text-align:right;"> 182 </td>
   <td style="text-align:right;"> 190 </td>
   <td style="text-align:right;"> 61 </td>
   <td style="text-align:right;"> 23.002421 </td>
   <td style="text-align:right;"> 5.371227 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1212 </td>
   <td style="text-align:right;"> 238 </td>
   <td style="text-align:right;"> 170 </td>
   <td style="text-align:right;"> 75 </td>
   <td style="text-align:right;"> 14.026403 </td>
   <td style="text-align:right;"> 5.541328 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1310 </td>
   <td style="text-align:right;"> 297 </td>
   <td style="text-align:right;"> 320 </td>
   <td style="text-align:right;"> 106 </td>
   <td style="text-align:right;"> 24.427481 </td>
   <td style="text-align:right;"> 5.899412 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 641 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 298 </td>
   <td style="text-align:right;"> 178 </td>
   <td style="text-align:right;"> 46.489860 </td>
   <td style="text-align:right;"> 24.231805 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2133 </td>
   <td style="text-align:right;"> 308 </td>
   <td style="text-align:right;"> 334 </td>
   <td style="text-align:right;"> 118 </td>
   <td style="text-align:right;"> 15.658697 </td>
   <td style="text-align:right;"> 5.048942 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 962 </td>
   <td style="text-align:right;"> 208 </td>
   <td style="text-align:right;"> 469 </td>
   <td style="text-align:right;"> 123 </td>
   <td style="text-align:right;"> 48.752599 </td>
   <td style="text-align:right;"> 7.236259 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1016 </td>
   <td style="text-align:right;"> 166 </td>
   <td style="text-align:right;"> 183 </td>
   <td style="text-align:right;"> 62 </td>
   <td style="text-align:right;"> 18.011811 </td>
   <td style="text-align:right;"> 5.345869 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 3003 </td>
   <td style="text-align:right;"> 287 </td>
   <td style="text-align:right;"> 406 </td>
   <td style="text-align:right;"> 74 </td>
   <td style="text-align:right;"> 13.519813 </td>
   <td style="text-align:right;"> 2.098276 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2371 </td>
   <td style="text-align:right;"> 432 </td>
   <td style="text-align:right;"> 315 </td>
   <td style="text-align:right;"> 132 </td>
   <td style="text-align:right;"> 13.285533 </td>
   <td style="text-align:right;"> 5.013480 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 993 </td>
   <td style="text-align:right;"> 273 </td>
   <td style="text-align:right;"> 352 </td>
   <td style="text-align:right;"> 115 </td>
   <td style="text-align:right;"> 35.448137 </td>
   <td style="text-align:right;"> 6.256611 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2748 </td>
   <td style="text-align:right;"> 340 </td>
   <td style="text-align:right;"> 637 </td>
   <td style="text-align:right;"> 171 </td>
   <td style="text-align:right;"> 23.180495 </td>
   <td style="text-align:right;"> 5.522359 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2286 </td>
   <td style="text-align:right;"> 341 </td>
   <td style="text-align:right;"> 261 </td>
   <td style="text-align:right;"> 99 </td>
   <td style="text-align:right;"> 11.417323 </td>
   <td style="text-align:right;"> 3.981766 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1222 </td>
   <td style="text-align:right;"> 215 </td>
   <td style="text-align:right;"> 216 </td>
   <td style="text-align:right;"> 83 </td>
   <td style="text-align:right;"> 17.675941 </td>
   <td style="text-align:right;"> 6.038343 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2189 </td>
   <td style="text-align:right;"> 297 </td>
   <td style="text-align:right;"> 202 </td>
   <td style="text-align:right;"> 137 </td>
   <td style="text-align:right;"> 9.227958 </td>
   <td style="text-align:right;"> 6.132051 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1495 </td>
   <td style="text-align:right;"> 386 </td>
   <td style="text-align:right;"> 62 </td>
   <td style="text-align:right;"> 54 </td>
   <td style="text-align:right;"> 4.147157 </td>
   <td style="text-align:right;"> 3.449679 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1001 </td>
   <td style="text-align:right;"> 291 </td>
   <td style="text-align:right;"> 147 </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 14.685315 </td>
   <td style="text-align:right;"> 5.788849 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1739 </td>
   <td style="text-align:right;"> 323 </td>
   <td style="text-align:right;"> 349 </td>
   <td style="text-align:right;"> 102 </td>
   <td style="text-align:right;"> 20.069005 </td>
   <td style="text-align:right;"> 4.528622 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1818 </td>
   <td style="text-align:right;"> 304 </td>
   <td style="text-align:right;"> 468 </td>
   <td style="text-align:right;"> 113 </td>
   <td style="text-align:right;"> 25.742574 </td>
   <td style="text-align:right;"> 4.483800 </td>
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
svi4_g65_pov %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 389 </td>
   <td style="text-align:right;"> 133 </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:right;"> 42.72002 </td>
   <td style="text-align:right;"> 6.9408740 </td>
   <td style="text-align:right;"> 10.722543 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 244 </td>
   <td style="text-align:right;"> 78 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 6.955149 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 190 </td>
   <td style="text-align:right;"> 61 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 22.47221 </td>
   <td style="text-align:right;"> 10.0000000 </td>
   <td style="text-align:right;"> 11.383397 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 170 </td>
   <td style="text-align:right;"> 75 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 9.982684 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 320 </td>
   <td style="text-align:right;"> 106 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 5.303301 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 298 </td>
   <td style="text-align:right;"> 178 </td>
   <td style="text-align:right;"> 14 </td>
   <td style="text-align:right;"> 25.94224 </td>
   <td style="text-align:right;"> 4.6979866 </td>
   <td style="text-align:right;"> 8.240766 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 334 </td>
   <td style="text-align:right;"> 118 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 26.83282 </td>
   <td style="text-align:right;"> 4.4910180 </td>
   <td style="text-align:right;"> 7.875540 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 469 </td>
   <td style="text-align:right;"> 123 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 27.73085 </td>
   <td style="text-align:right;"> 3.4115139 </td>
   <td style="text-align:right;"> 5.844677 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 183 </td>
   <td style="text-align:right;"> 62 </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 18.43909 </td>
   <td style="text-align:right;"> 4.9180328 </td>
   <td style="text-align:right;"> 9.937283 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 406 </td>
   <td style="text-align:right;"> 74 </td>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:right;"> 37.00000 </td>
   <td style="text-align:right;"> 5.6650246 </td>
   <td style="text-align:right;"> 9.054618 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 315 </td>
   <td style="text-align:right;"> 132 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 5.387480 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 352 </td>
   <td style="text-align:right;"> 115 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 27.73085 </td>
   <td style="text-align:right;"> 4.5454545 </td>
   <td style="text-align:right;"> 7.736853 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 637 </td>
   <td style="text-align:right;"> 171 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.664139 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 261 </td>
   <td style="text-align:right;"> 99 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 6.502131 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 216 </td>
   <td style="text-align:right;"> 83 </td>
   <td style="text-align:right;"> 44 </td>
   <td style="text-align:right;"> 41.76123 </td>
   <td style="text-align:right;"> 20.3703704 </td>
   <td style="text-align:right;"> 17.678516 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 202 </td>
   <td style="text-align:right;"> 137 </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 21.63331 </td>
   <td style="text-align:right;"> 5.4455446 </td>
   <td style="text-align:right;"> 10.052583 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 62 </td>
   <td style="text-align:right;"> 54 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 27.371875 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 147 </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 13.89244 </td>
   <td style="text-align:right;"> 2.0408163 </td>
   <td style="text-align:right;"> 9.397631 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 349 </td>
   <td style="text-align:right;"> 102 </td>
   <td style="text-align:right;"> 67 </td>
   <td style="text-align:right;"> 58.69412 </td>
   <td style="text-align:right;"> 19.1977077 </td>
   <td style="text-align:right;"> 15.854256 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 468 </td>
   <td style="text-align:right;"> 113 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 13.89244 </td>
   <td style="text-align:right;"> 0.6410256 </td>
   <td style="text-align:right;"> 2.964433 </td>
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
svi5_g16_tran %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1036 </td>
   <td style="text-align:right;"> 131 </td>
   <td style="text-align:right;"> 34 </td>
   <td style="text-align:right;"> 36 </td>
   <td style="text-align:right;"> 3.281853 </td>
   <td style="text-align:right;"> 3.4500352 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 420 </td>
   <td style="text-align:right;"> 131 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 2.8571429 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 491 </td>
   <td style="text-align:right;"> 136 </td>
   <td style="text-align:right;"> 69 </td>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;"> 14.052953 </td>
   <td style="text-align:right;"> 7.1565656 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 706 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:right;"> 2.124646 </td>
   <td style="text-align:right;"> 3.2088158 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 664 </td>
   <td style="text-align:right;"> 169 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.8072289 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 197 </td>
   <td style="text-align:right;"> 124 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 6.0913706 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1194 </td>
   <td style="text-align:right;"> 271 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 1.340034 </td>
   <td style="text-align:right;"> 2.0715946 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 493 </td>
   <td style="text-align:right;"> 162 </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 49 </td>
   <td style="text-align:right;"> 8.316430 </td>
   <td style="text-align:right;"> 9.5560748 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 634 </td>
   <td style="text-align:right;"> 151 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 1.577287 </td>
   <td style="text-align:right;"> 2.4955427 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1612 </td>
   <td style="text-align:right;"> 161 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:right;"> 1.178660 </td>
   <td style="text-align:right;"> 1.2973998 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1467 </td>
   <td style="text-align:right;"> 288 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.8179959 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 526 </td>
   <td style="text-align:right;"> 182 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 3.041825 </td>
   <td style="text-align:right;"> 4.6348522 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1288 </td>
   <td style="text-align:right;"> 263 </td>
   <td style="text-align:right;"> 45 </td>
   <td style="text-align:right;"> 44 </td>
   <td style="text-align:right;"> 3.493789 </td>
   <td style="text-align:right;"> 3.3408273 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1062 </td>
   <td style="text-align:right;"> 227 </td>
   <td style="text-align:right;"> 44 </td>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 4.143126 </td>
   <td style="text-align:right;"> 4.6240597 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 611 </td>
   <td style="text-align:right;"> 151 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.9639935 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1122 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.0695187 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 728 </td>
   <td style="text-align:right;"> 204 </td>
   <td style="text-align:right;"> 14 </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:right;"> 1.923077 </td>
   <td style="text-align:right;"> 2.8338330 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 594 </td>
   <td style="text-align:right;"> 220 </td>
   <td style="text-align:right;"> 33 </td>
   <td style="text-align:right;"> 42 </td>
   <td style="text-align:right;"> 5.555556 </td>
   <td style="text-align:right;"> 6.7646971 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 845 </td>
   <td style="text-align:right;"> 205 </td>
   <td style="text-align:right;"> 18 </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 2.130177 </td>
   <td style="text-align:right;"> 3.5124821 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 811 </td>
   <td style="text-align:right;"> 164 </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 1.356350 </td>
   <td style="text-align:right;"> 1.2021530 </td>
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
svi6_noveh %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 922 </td>
   <td style="text-align:right;"> 87 </td>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:right;"> 28.635642 </td>
   <td style="text-align:right;"> 2.4945770 </td>
   <td style="text-align:right;"> 3.0968852 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 369 </td>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 16.970563 </td>
   <td style="text-align:right;"> 4.0650407 </td>
   <td style="text-align:right;"> 4.5429818 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 405 </td>
   <td style="text-align:right;"> 78 </td>
   <td style="text-align:right;"> 64 </td>
   <td style="text-align:right;"> 63.150614 </td>
   <td style="text-align:right;"> 15.8024691 </td>
   <td style="text-align:right;"> 15.2928464 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 579 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.970563 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.9310126 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 508 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.970563 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 3.3406620 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 112 </td>
   <td style="text-align:right;"> 67 </td>
   <td style="text-align:right;"> 82.861330 </td>
   <td style="text-align:right;"> 17.8666667 </td>
   <td style="text-align:right;"> 21.4423435 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 878 </td>
   <td style="text-align:right;"> 121 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 27.730849 </td>
   <td style="text-align:right;"> 1.8223235 </td>
   <td style="text-align:right;"> 3.1484106 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 44 </td>
   <td style="text-align:right;"> 42.011903 </td>
   <td style="text-align:right;"> 7.6655052 </td>
   <td style="text-align:right;"> 7.2083534 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 536 </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:right;"> 53 </td>
   <td style="text-align:right;"> 48.507731 </td>
   <td style="text-align:right;"> 9.8880597 </td>
   <td style="text-align:right;"> 8.9257340 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1177 </td>
   <td style="text-align:right;"> 88 </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 37.336309 </td>
   <td style="text-align:right;"> 2.5488530 </td>
   <td style="text-align:right;"> 3.1664294 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1038 </td>
   <td style="text-align:right;"> 151 </td>
   <td style="text-align:right;"> 18 </td>
   <td style="text-align:right;"> 29.546573 </td>
   <td style="text-align:right;"> 1.7341040 </td>
   <td style="text-align:right;"> 2.8352905 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 564 </td>
   <td style="text-align:right;"> 122 </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 74.966659 </td>
   <td style="text-align:right;"> 12.4113475 </td>
   <td style="text-align:right;"> 13.0180060 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1148 </td>
   <td style="text-align:right;"> 134 </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:right;"> 74.966659 </td>
   <td style="text-align:right;"> 7.0557491 </td>
   <td style="text-align:right;"> 6.4780541 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 711 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 31.384710 </td>
   <td style="text-align:right;"> 2.6722925 </td>
   <td style="text-align:right;"> 4.3987702 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.970563 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.9565440 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 938 </td>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 30.463092 </td>
   <td style="text-align:right;"> 1.8123667 </td>
   <td style="text-align:right;"> 3.2407024 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 521 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.970563 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 3.2573057 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 364 </td>
   <td style="text-align:right;"> 99 </td>
   <td style="text-align:right;"> 14 </td>
   <td style="text-align:right;"> 26.832816 </td>
   <td style="text-align:right;"> 3.8461538 </td>
   <td style="text-align:right;"> 7.2970543 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 613 </td>
   <td style="text-align:right;"> 82 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.970563 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.7684442 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 721 </td>
   <td style="text-align:right;"> 92 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 4.242641 </td>
   <td style="text-align:right;"> 0.4160888 </td>
   <td style="text-align:right;"> 0.5860383 </td>
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
svi7_vac %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1003 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:right;"> 75 </td>
   <td style="text-align:right;"> 8.0757727 </td>
   <td style="text-align:right;"> 7.4340922 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 427 </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 58 </td>
   <td style="text-align:right;"> 54 </td>
   <td style="text-align:right;"> 13.5831382 </td>
   <td style="text-align:right;"> 12.4487865 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 444 </td>
   <td style="text-align:right;"> 84 </td>
   <td style="text-align:right;"> 39 </td>
   <td style="text-align:right;"> 59 </td>
   <td style="text-align:right;"> 8.7837838 </td>
   <td style="text-align:right;"> 13.1839689 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 579 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.0725389 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 570 </td>
   <td style="text-align:right;"> 106 </td>
   <td style="text-align:right;"> 62 </td>
   <td style="text-align:right;"> 74 </td>
   <td style="text-align:right;"> 10.8771930 </td>
   <td style="text-align:right;"> 12.8239052 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 112 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 3.2000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 916 </td>
   <td style="text-align:right;"> 128 </td>
   <td style="text-align:right;"> 38 </td>
   <td style="text-align:right;"> 58 </td>
   <td style="text-align:right;"> 4.1484716 </td>
   <td style="text-align:right;"> 6.3052854 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.0905923 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 596 </td>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;"> 60 </td>
   <td style="text-align:right;"> 61 </td>
   <td style="text-align:right;"> 10.0671141 </td>
   <td style="text-align:right;"> 10.1453033 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1208 </td>
   <td style="text-align:right;"> 92 </td>
   <td style="text-align:right;"> 31 </td>
   <td style="text-align:right;"> 48 </td>
   <td style="text-align:right;"> 2.5662252 </td>
   <td style="text-align:right;"> 3.9687005 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1112 </td>
   <td style="text-align:right;"> 129 </td>
   <td style="text-align:right;"> 74 </td>
   <td style="text-align:right;"> 107 </td>
   <td style="text-align:right;"> 6.6546763 </td>
   <td style="text-align:right;"> 9.5912841 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 564 </td>
   <td style="text-align:right;"> 122 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.1276596 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1148 </td>
   <td style="text-align:right;"> 134 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 1.0452962 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 711 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 1.6877637 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 640 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 66 </td>
   <td style="text-align:right;"> 62 </td>
   <td style="text-align:right;"> 10.3125000 </td>
   <td style="text-align:right;"> 9.5525535 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 938 </td>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 1.2793177 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 521 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.3032630 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 448 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 84 </td>
   <td style="text-align:right;"> 84 </td>
   <td style="text-align:right;"> 18.7500000 </td>
   <td style="text-align:right;"> 18.2958926 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 613 </td>
   <td style="text-align:right;"> 82 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 1.9575856 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 726 </td>
   <td style="text-align:right;"> 92 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 0.6887052 </td>
   <td style="text-align:right;"> 0.8218252 </td>
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
svi8_vac<- readRDS("SVI.RDS")[[8]]
svi8_vac %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
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
  <tr>
   <td style="text-align:right;"> 1038 </td>
   <td style="text-align:right;"> 151 </td>
   <td style="text-align:right;"> 647 </td>
   <td style="text-align:right;"> 152 </td>
   <td style="text-align:right;"> 62.331407 </td>
   <td style="text-align:right;"> 11.498446 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 564 </td>
   <td style="text-align:right;"> 122 </td>
   <td style="text-align:right;"> 236 </td>
   <td style="text-align:right;"> 84 </td>
   <td style="text-align:right;"> 41.843972 </td>
   <td style="text-align:right;"> 11.827628 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1148 </td>
   <td style="text-align:right;"> 134 </td>
   <td style="text-align:right;"> 261 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 22.735192 </td>
   <td style="text-align:right;"> 8.113621 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 711 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:right;"> 2.390999 </td>
   <td style="text-align:right;"> 3.783141 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 138 </td>
   <td style="text-align:right;"> 74 </td>
   <td style="text-align:right;"> 24.041812 </td>
   <td style="text-align:right;"> 12.221078 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 938 </td>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 590 </td>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 62.899787 </td>
   <td style="text-align:right;"> 9.116713 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 521 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 32 </td>
   <td style="text-align:right;"> 33 </td>
   <td style="text-align:right;"> 6.142035 </td>
   <td style="text-align:right;"> 6.223297 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 364 </td>
   <td style="text-align:right;"> 99 </td>
   <td style="text-align:right;"> 116 </td>
   <td style="text-align:right;"> 57 </td>
   <td style="text-align:right;"> 31.868132 </td>
   <td style="text-align:right;"> 13.041878 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 613 </td>
   <td style="text-align:right;"> 82 </td>
   <td style="text-align:right;"> 114 </td>
   <td style="text-align:right;"> 59 </td>
   <td style="text-align:right;"> 18.597064 </td>
   <td style="text-align:right;"> 9.297745 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 721 </td>
   <td style="text-align:right;"> 92 </td>
   <td style="text-align:right;"> 47 </td>
   <td style="text-align:right;"> 51 </td>
   <td style="text-align:right;"> 6.518724 </td>
   <td style="text-align:right;"> 7.024432 </td>
  </tr>
</tbody>
</table>






### 9 Non-white population/Total population



```r
white_var <- c("B02001_002")
white_tot <- c("B02001_001")
vars %>% filter(name %in% c(white_tot,white_var)) %>% kbl() %>% 
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
   <td style="text-align:left;"> B02001_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!White alone </td>
   <td style="text-align:left;"> RACE </td>
  </tr>
</tbody>
</table>


```r
SVI[[9]] <- svi9_nonwhite <- comb(white_var,white_tot) %>% mutate(sum=summary_est-sum,per=100-per)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi9_nonwhite<- readRDS("SVI.RDS")[[9]]
svi9_nonwhite %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 2253 </td>
   <td style="text-align:right;"> 209 </td>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 207 </td>
   <td style="text-align:right;"> 16.644474 </td>
   <td style="text-align:right;"> 4.962188 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 905 </td>
   <td style="text-align:right;"> 204 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 189 </td>
   <td style="text-align:right;"> 10.497238 </td>
   <td style="text-align:right;"> 5.394581 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 826 </td>
   <td style="text-align:right;"> 182 </td>
   <td style="text-align:right;"> 198 </td>
   <td style="text-align:right;"> 144 </td>
   <td style="text-align:right;"> 23.970944 </td>
   <td style="text-align:right;"> 4.825857 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1212 </td>
   <td style="text-align:right;"> 238 </td>
   <td style="text-align:right;"> 64 </td>
   <td style="text-align:right;"> 229 </td>
   <td style="text-align:right;"> 5.280528 </td>
   <td style="text-align:right;"> 3.322183 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1310 </td>
   <td style="text-align:right;"> 297 </td>
   <td style="text-align:right;"> 108 </td>
   <td style="text-align:right;"> 278 </td>
   <td style="text-align:right;"> 8.244275 </td>
   <td style="text-align:right;"> 4.194895 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 641 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2133 </td>
   <td style="text-align:right;"> 308 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 313 </td>
   <td style="text-align:right;"> 8.766995 </td>
   <td style="text-align:right;"> 6.463867 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 962 </td>
   <td style="text-align:right;"> 208 </td>
   <td style="text-align:right;"> 52 </td>
   <td style="text-align:right;"> 193 </td>
   <td style="text-align:right;"> 5.405405 </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1016 </td>
   <td style="text-align:right;"> 166 </td>
   <td style="text-align:right;"> 155 </td>
   <td style="text-align:right;"> 171 </td>
   <td style="text-align:right;"> 15.255906 </td>
   <td style="text-align:right;"> 9.568776 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 3003 </td>
   <td style="text-align:right;"> 287 </td>
   <td style="text-align:right;"> 482 </td>
   <td style="text-align:right;"> 272 </td>
   <td style="text-align:right;"> 16.050616 </td>
   <td style="text-align:right;"> 4.203521 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2371 </td>
   <td style="text-align:right;"> 432 </td>
   <td style="text-align:right;"> 561 </td>
   <td style="text-align:right;"> 379 </td>
   <td style="text-align:right;"> 23.660903 </td>
   <td style="text-align:right;"> 7.877254 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 993 </td>
   <td style="text-align:right;"> 273 </td>
   <td style="text-align:right;"> 102 </td>
   <td style="text-align:right;"> 269 </td>
   <td style="text-align:right;"> 10.271903 </td>
   <td style="text-align:right;"> 11.194441 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2748 </td>
   <td style="text-align:right;"> 340 </td>
   <td style="text-align:right;"> 492 </td>
   <td style="text-align:right;"> 348 </td>
   <td style="text-align:right;"> 17.903930 </td>
   <td style="text-align:right;"> 7.562868 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2286 </td>
   <td style="text-align:right;"> 341 </td>
   <td style="text-align:right;"> 525 </td>
   <td style="text-align:right;"> 334 </td>
   <td style="text-align:right;"> 22.965879 </td>
   <td style="text-align:right;"> 9.023669 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1222 </td>
   <td style="text-align:right;"> 215 </td>
   <td style="text-align:right;"> 156 </td>
   <td style="text-align:right;"> 198 </td>
   <td style="text-align:right;"> 12.765957 </td>
   <td style="text-align:right;"> 5.193531 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2189 </td>
   <td style="text-align:right;"> 297 </td>
   <td style="text-align:right;"> 501 </td>
   <td style="text-align:right;"> 246 </td>
   <td style="text-align:right;"> 22.887163 </td>
   <td style="text-align:right;"> 4.102190 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1495 </td>
   <td style="text-align:right;"> 386 </td>
   <td style="text-align:right;"> 432 </td>
   <td style="text-align:right;"> 281 </td>
   <td style="text-align:right;"> 28.896321 </td>
   <td style="text-align:right;"> 4.031508 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1001 </td>
   <td style="text-align:right;"> 291 </td>
   <td style="text-align:right;"> 125 </td>
   <td style="text-align:right;"> 295 </td>
   <td style="text-align:right;"> 12.487512 </td>
   <td style="text-align:right;"> 14.875592 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1739 </td>
   <td style="text-align:right;"> 323 </td>
   <td style="text-align:right;"> 82 </td>
   <td style="text-align:right;"> 317 </td>
   <td style="text-align:right;"> 4.715354 </td>
   <td style="text-align:right;"> 4.366918 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1818 </td>
   <td style="text-align:right;"> 304 </td>
   <td style="text-align:right;"> 277 </td>
   <td style="text-align:right;"> 277 </td>
   <td style="text-align:right;"> 15.236524 </td>
   <td style="text-align:right;"> 5.590442 </td>
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
newhou_var <- c("B25034_002","B25034_003","B25034_004")
newhou_tot <- c("B25034_001")
vars %>% filter(name %in% c(newhou_tot,newhou_var)) %>% kbl() %>% 
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
   <td style="text-align:left;"> B25034_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Built 2014 or later </td>
   <td style="text-align:left;"> YEAR STRUCTURE BUILT </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25034_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Built 2010 to 2013 </td>
   <td style="text-align:left;"> YEAR STRUCTURE BUILT </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25034_004 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Built 2000 to 2009 </td>
   <td style="text-align:left;"> YEAR STRUCTURE BUILT </td>
  </tr>
</tbody>
</table>


```r
SVI[[11]] <- svi11_oldhou <- comb(newhou_var,newhou_tot) %>% mutate(sum=summary_est-sum,per=100-per)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi11_oldhou<- readRDS("SVI.RDS")[[11]]
svi11_oldhou %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1003 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 756 </td>
   <td style="text-align:right;"> 105.56515 </td>
   <td style="text-align:right;"> 75.37388 </td>
   <td style="text-align:right;"> 10.234555 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 427 </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 293 </td>
   <td style="text-align:right;"> 48.76474 </td>
   <td style="text-align:right;"> 68.61827 </td>
   <td style="text-align:right;"> 10.195941 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 444 </td>
   <td style="text-align:right;"> 84 </td>
   <td style="text-align:right;"> 321 </td>
   <td style="text-align:right;"> 48.96938 </td>
   <td style="text-align:right;"> 72.29730 </td>
   <td style="text-align:right;"> 9.704292 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 579 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 465 </td>
   <td style="text-align:right;"> 60.67949 </td>
   <td style="text-align:right;"> 80.31088 </td>
   <td style="text-align:right;"> 9.958633 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 570 </td>
   <td style="text-align:right;"> 106 </td>
   <td style="text-align:right;"> 491 </td>
   <td style="text-align:right;"> 71.72168 </td>
   <td style="text-align:right;"> 86.14035 </td>
   <td style="text-align:right;"> 12.315949 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 112 </td>
   <td style="text-align:right;"> 268 </td>
   <td style="text-align:right;"> 85.69714 </td>
   <td style="text-align:right;"> 71.46667 </td>
   <td style="text-align:right;"> 21.204157 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 916 </td>
   <td style="text-align:right;"> 128 </td>
   <td style="text-align:right;"> 863 </td>
   <td style="text-align:right;"> 63.53739 </td>
   <td style="text-align:right;"> 94.21397 </td>
   <td style="text-align:right;"> 6.889113 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 549 </td>
   <td style="text-align:right;"> 31.89044 </td>
   <td style="text-align:right;"> 95.64460 </td>
   <td style="text-align:right;"> 5.508864 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 596 </td>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;"> 492 </td>
   <td style="text-align:right;"> 59.40539 </td>
   <td style="text-align:right;"> 82.55034 </td>
   <td style="text-align:right;"> 9.688237 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1208 </td>
   <td style="text-align:right;"> 92 </td>
   <td style="text-align:right;"> 1069 </td>
   <td style="text-align:right;"> 57.10517 </td>
   <td style="text-align:right;"> 88.49338 </td>
   <td style="text-align:right;"> 4.645312 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1112 </td>
   <td style="text-align:right;"> 129 </td>
   <td style="text-align:right;"> 965 </td>
   <td style="text-align:right;"> 105.37552 </td>
   <td style="text-align:right;"> 86.78058 </td>
   <td style="text-align:right;"> 9.351304 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 564 </td>
   <td style="text-align:right;"> 122 </td>
   <td style="text-align:right;"> 564 </td>
   <td style="text-align:right;"> 20.78461 </td>
   <td style="text-align:right;"> 100.00000 </td>
   <td style="text-align:right;"> 3.685214 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1148 </td>
   <td style="text-align:right;"> 134 </td>
   <td style="text-align:right;"> 1148 </td>
   <td style="text-align:right;"> 20.78461 </td>
   <td style="text-align:right;"> 100.00000 </td>
   <td style="text-align:right;"> 1.810506 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 711 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 695 </td>
   <td style="text-align:right;"> 31.04835 </td>
   <td style="text-align:right;"> 97.74965 </td>
   <td style="text-align:right;"> 4.355827 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 640 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 629 </td>
   <td style="text-align:right;"> 24.02082 </td>
   <td style="text-align:right;"> 98.28125 </td>
   <td style="text-align:right;"> 3.743634 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 938 </td>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 891 </td>
   <td style="text-align:right;"> 42.94182 </td>
   <td style="text-align:right;"> 94.98934 </td>
   <td style="text-align:right;"> 4.540152 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 521 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 430 </td>
   <td style="text-align:right;"> 63.00000 </td>
   <td style="text-align:right;"> 82.53359 </td>
   <td style="text-align:right;"> 11.618111 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 448 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 420 </td>
   <td style="text-align:right;"> 32.15587 </td>
   <td style="text-align:right;"> 93.75000 </td>
   <td style="text-align:right;"> 7.046237 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 613 </td>
   <td style="text-align:right;"> 82 </td>
   <td style="text-align:right;"> 571 </td>
   <td style="text-align:right;"> 48.13523 </td>
   <td style="text-align:right;"> 93.14845 </td>
   <td style="text-align:right;"> 7.798731 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 726 </td>
   <td style="text-align:right;"> 92 </td>
   <td style="text-align:right;"> 643 </td>
   <td style="text-align:right;"> 31.24100 </td>
   <td style="text-align:right;"> 88.56749 </td>
   <td style="text-align:right;"> 4.051961 </td>
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
svi12_mhou %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1003 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.1964108 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 427 </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 2.8103044 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 444 </td>
   <td style="text-align:right;"> 84 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 2.7027027 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 579 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:right;"> 2.590674 </td>
   <td style="text-align:right;"> 3.9490742 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 570 </td>
   <td style="text-align:right;"> 106 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 2.1052632 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 112 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 3.2000000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 916 </td>
   <td style="text-align:right;"> 128 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.3100437 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 2.0905923 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 596 </td>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 2.0134228 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1208 </td>
   <td style="text-align:right;"> 92 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.9933775 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1112 </td>
   <td style="text-align:right;"> 129 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.0791367 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 564 </td>
   <td style="text-align:right;"> 122 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 2.1276596 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1148 </td>
   <td style="text-align:right;"> 134 </td>
   <td style="text-align:right;"> 18 </td>
   <td style="text-align:right;"> 29 </td>
   <td style="text-align:right;"> 1.567944 </td>
   <td style="text-align:right;"> 2.5194939 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 711 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.6877637 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 640 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.8750000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 938 </td>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.2793177 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 521 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 2.3032630 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 448 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 2.6785714 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 613 </td>
   <td style="text-align:right;"> 82 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.9575856 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 726 </td>
   <td style="text-align:right;"> 92 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.6528926 </td>
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
svi13_pov %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 2253 </td>
   <td style="text-align:right;"> 209 </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:right;"> 42.72002 </td>
   <td style="text-align:right;"> 1.1984021 </td>
   <td style="text-align:right;"> 1.8928776 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 905 </td>
   <td style="text-align:right;"> 204 </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 18.43909 </td>
   <td style="text-align:right;"> 0.9944751 </td>
   <td style="text-align:right;"> 2.0250989 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 815 </td>
   <td style="text-align:right;"> 182 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 17.69181 </td>
   <td style="text-align:right;"> 2.3312883 </td>
   <td style="text-align:right;"> 2.1074220 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1212 </td>
   <td style="text-align:right;"> 238 </td>
   <td style="text-align:right;"> 101 </td>
   <td style="text-align:right;"> 97.67292 </td>
   <td style="text-align:right;"> 8.3333333 </td>
   <td style="text-align:right;"> 7.8909292 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1310 </td>
   <td style="text-align:right;"> 297 </td>
   <td style="text-align:right;"> 26 </td>
   <td style="text-align:right;"> 40.80441 </td>
   <td style="text-align:right;"> 1.9847328 </td>
   <td style="text-align:right;"> 3.0821673 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 641 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 86 </td>
   <td style="text-align:right;"> 115.31695 </td>
   <td style="text-align:right;"> 13.4165367 </td>
   <td style="text-align:right;"> 17.5592255 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2133 </td>
   <td style="text-align:right;"> 308 </td>
   <td style="text-align:right;"> 44 </td>
   <td style="text-align:right;"> 40.00000 </td>
   <td style="text-align:right;"> 2.0628223 </td>
   <td style="text-align:right;"> 1.8514857 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 962 </td>
   <td style="text-align:right;"> 208 </td>
   <td style="text-align:right;"> 91 </td>
   <td style="text-align:right;"> 85.14693 </td>
   <td style="text-align:right;"> 9.4594595 </td>
   <td style="text-align:right;"> 8.6114789 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1016 </td>
   <td style="text-align:right;"> 166 </td>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;"> 29.54657 </td>
   <td style="text-align:right;"> 3.9370079 </td>
   <td style="text-align:right;"> 2.8360945 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2994 </td>
   <td style="text-align:right;"> 288 </td>
   <td style="text-align:right;"> 228 </td>
   <td style="text-align:right;"> 134.33168 </td>
   <td style="text-align:right;"> 7.6152305 </td>
   <td style="text-align:right;"> 4.4264936 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2371 </td>
   <td style="text-align:right;"> 432 </td>
   <td style="text-align:right;"> 102 </td>
   <td style="text-align:right;"> 93.94147 </td>
   <td style="text-align:right;"> 4.3019823 </td>
   <td style="text-align:right;"> 3.8837967 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 993 </td>
   <td style="text-align:right;"> 273 </td>
   <td style="text-align:right;"> 45 </td>
   <td style="text-align:right;"> 54.34151 </td>
   <td style="text-align:right;"> 4.5317221 </td>
   <td style="text-align:right;"> 5.3287505 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2701 </td>
   <td style="text-align:right;"> 337 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.6283067 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2286 </td>
   <td style="text-align:right;"> 341 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.7423693 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1222 </td>
   <td style="text-align:right;"> 215 </td>
   <td style="text-align:right;"> 58 </td>
   <td style="text-align:right;"> 46.66905 </td>
   <td style="text-align:right;"> 4.7463175 </td>
   <td style="text-align:right;"> 3.7266550 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2189 </td>
   <td style="text-align:right;"> 297 </td>
   <td style="text-align:right;"> 97 </td>
   <td style="text-align:right;"> 98.73196 </td>
   <td style="text-align:right;"> 4.4312471 </td>
   <td style="text-align:right;"> 4.4701175 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1479 </td>
   <td style="text-align:right;"> 382 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 1.1474349 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 991 </td>
   <td style="text-align:right;"> 292 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 18.43909 </td>
   <td style="text-align:right;"> 1.0090817 </td>
   <td style="text-align:right;"> 1.8367451 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1719 </td>
   <td style="text-align:right;"> 321 </td>
   <td style="text-align:right;"> 178 </td>
   <td style="text-align:right;"> 131.89769 </td>
   <td style="text-align:right;"> 10.3548575 </td>
   <td style="text-align:right;"> 7.4252912 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1789 </td>
   <td style="text-align:right;"> 299 </td>
   <td style="text-align:right;"> 13 </td>
   <td style="text-align:right;"> 11.40175 </td>
   <td style="text-align:right;"> 0.7266629 </td>
   <td style="text-align:right;"> 0.6256469 </td>
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
SVI[[14]] <- svi14_pov <- comb(nophone_var,nophone_tot)
saveRDS(SVI,file = "SVI.RDS")
```



```r
svi14_nophone <- readRDS("SVI.RDS")[[14]]
svi14_nophone %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 922 </td>
   <td style="text-align:right;"> 87 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 16.27882 </td>
   <td style="text-align:right;"> 0.7592191 </td>
   <td style="text-align:right;"> 1.764145 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 369 </td>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 16.27882 </td>
   <td style="text-align:right;"> 1.8970190 </td>
   <td style="text-align:right;"> 4.398930 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 405 </td>
   <td style="text-align:right;"> 78 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 4.190262 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 579 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.931013 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 508 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 3.340662 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 112 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 4.525483 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 878 </td>
   <td style="text-align:right;"> 121 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 1.932866 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.956544 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 536 </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 3.166150 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1177 </td>
   <td style="text-align:right;"> 88 </td>
   <td style="text-align:right;"> 36 </td>
   <td style="text-align:right;"> 42.72002 </td>
   <td style="text-align:right;"> 3.0586236 </td>
   <td style="text-align:right;"> 3.622357 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1038 </td>
   <td style="text-align:right;"> 151 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 31.38471 </td>
   <td style="text-align:right;"> 1.8304432 </td>
   <td style="text-align:right;"> 3.011827 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 564 </td>
   <td style="text-align:right;"> 122 </td>
   <td style="text-align:right;"> 53 </td>
   <td style="text-align:right;"> 84.85281 </td>
   <td style="text-align:right;"> 9.3971631 </td>
   <td style="text-align:right;"> 14.906871 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1148 </td>
   <td style="text-align:right;"> 134 </td>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 78.91768 </td>
   <td style="text-align:right;"> 4.3554007 </td>
   <td style="text-align:right;"> 6.855538 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 711 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.386858 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 574 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.956544 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 938 </td>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 1.809228 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 521 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 26.83282 </td>
   <td style="text-align:right;"> 2.8790787 </td>
   <td style="text-align:right;"> 5.120520 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 364 </td>
   <td style="text-align:right;"> 99 </td>
   <td style="text-align:right;"> 39 </td>
   <td style="text-align:right;"> 37.94733 </td>
   <td style="text-align:right;"> 10.7142857 </td>
   <td style="text-align:right;"> 10.009537 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 613 </td>
   <td style="text-align:right;"> 82 </td>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 39.84972 </td>
   <td style="text-align:right;"> 4.0783034 </td>
   <td style="text-align:right;"> 6.477838 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 721 </td>
   <td style="text-align:right;"> 92 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 12.36932 </td>
   <td style="text-align:right;"> 0.2773925 </td>
   <td style="text-align:right;"> 1.715213 </td>
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
svi15_noedu %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1655 </td>
   <td style="text-align:right;"> 160 </td>
   <td style="text-align:right;"> 24 </td>
   <td style="text-align:right;"> 51.16640 </td>
   <td style="text-align:right;"> 1.450151 </td>
   <td style="text-align:right;"> 3.088445 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 675 </td>
   <td style="text-align:right;"> 129 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 48.37355 </td>
   <td style="text-align:right;"> 1.777778 </td>
   <td style="text-align:right;"> 7.158393 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 690 </td>
   <td style="text-align:right;"> 133 </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 76.82448 </td>
   <td style="text-align:right;"> 10.434783 </td>
   <td style="text-align:right;"> 10.950802 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 955 </td>
   <td style="text-align:right;"> 198 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 46.47580 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 4.866576 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 977 </td>
   <td style="text-align:right;"> 199 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 46.47580 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 4.756991 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 558 </td>
   <td style="text-align:right;"> 181 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 46.47580 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 8.328996 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1544 </td>
   <td style="text-align:right;"> 236 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 46.47580 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 3.010091 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 770 </td>
   <td style="text-align:right;"> 153 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 51.39066 </td>
   <td style="text-align:right;"> 2.077922 </td>
   <td style="text-align:right;"> 6.661328 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 845 </td>
   <td style="text-align:right;"> 149 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 46.47580 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 5.500095 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2087 </td>
   <td style="text-align:right;"> 130 </td>
   <td style="text-align:right;"> 47 </td>
   <td style="text-align:right;"> 52.26854 </td>
   <td style="text-align:right;"> 2.252036 </td>
   <td style="text-align:right;"> 2.500550 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1736 </td>
   <td style="text-align:right;"> 303 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 52.91503 </td>
   <td style="text-align:right;"> 1.094470 </td>
   <td style="text-align:right;"> 3.042109 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 812 </td>
   <td style="text-align:right;"> 204 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 46.47580 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 5.723621 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1973 </td>
   <td style="text-align:right;"> 237 </td>
   <td style="text-align:right;"> 68 </td>
   <td style="text-align:right;"> 67.33498 </td>
   <td style="text-align:right;"> 3.446528 </td>
   <td style="text-align:right;"> 3.387618 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1435 </td>
   <td style="text-align:right;"> 229 </td>
   <td style="text-align:right;"> 64 </td>
   <td style="text-align:right;"> 87.50429 </td>
   <td style="text-align:right;"> 4.459930 </td>
   <td style="text-align:right;"> 6.056182 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 874 </td>
   <td style="text-align:right;"> 143 </td>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 55.13620 </td>
   <td style="text-align:right;"> 2.288330 </td>
   <td style="text-align:right;"> 6.297369 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1565 </td>
   <td style="text-align:right;"> 188 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 55.13620 </td>
   <td style="text-align:right;"> 1.214058 </td>
   <td style="text-align:right;"> 3.520060 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1022 </td>
   <td style="text-align:right;"> 236 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 51.88449 </td>
   <td style="text-align:right;"> 1.467710 </td>
   <td style="text-align:right;"> 5.065434 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 764 </td>
   <td style="text-align:right;"> 197 </td>
   <td style="text-align:right;"> 42 </td>
   <td style="text-align:right;"> 52.54522 </td>
   <td style="text-align:right;"> 5.497382 </td>
   <td style="text-align:right;"> 6.729982 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1210 </td>
   <td style="text-align:right;"> 202 </td>
   <td style="text-align:right;"> 33 </td>
   <td style="text-align:right;"> 55.07268 </td>
   <td style="text-align:right;"> 2.727273 </td>
   <td style="text-align:right;"> 4.528632 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1285 </td>
   <td style="text-align:right;"> 192 </td>
   <td style="text-align:right;"> 26 </td>
   <td style="text-align:right;"> 54.50688 </td>
   <td style="text-align:right;"> 2.023346 </td>
   <td style="text-align:right;"> 4.230993 </td>
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
svi16_unemp %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
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
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 2.443992 </td>
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
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 2.434077 </td>
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
  <tr>
   <td style="text-align:right;"> 1510 </td>
   <td style="text-align:right;"> 287 </td>
   <td style="text-align:right;"> 43 </td>
   <td style="text-align:right;"> 48 </td>
   <td style="text-align:right;"> 2.847682 </td>
   <td style="text-align:right;"> 3.132391 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 526 </td>
   <td style="text-align:right;"> 182 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 2.281369 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1288 </td>
   <td style="text-align:right;"> 263 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 0.931677 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1159 </td>
   <td style="text-align:right;"> 223 </td>
   <td style="text-align:right;"> 97 </td>
   <td style="text-align:right;"> 61 </td>
   <td style="text-align:right;"> 8.369284 </td>
   <td style="text-align:right;"> 5.010761 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 611 </td>
   <td style="text-align:right;"> 151 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.963993 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1237 </td>
   <td style="text-align:right;"> 210 </td>
   <td style="text-align:right;"> 115 </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 9.296686 </td>
   <td style="text-align:right;"> 5.434309 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 778 </td>
   <td style="text-align:right;"> 209 </td>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 46 </td>
   <td style="text-align:right;"> 6.426735 </td>
   <td style="text-align:right;"> 5.654920 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 653 </td>
   <td style="text-align:right;"> 238 </td>
   <td style="text-align:right;"> 59 </td>
   <td style="text-align:right;"> 49 </td>
   <td style="text-align:right;"> 9.035222 </td>
   <td style="text-align:right;"> 6.742629 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 873 </td>
   <td style="text-align:right;"> 206 </td>
   <td style="text-align:right;"> 28 </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 3.207331 </td>
   <td style="text-align:right;"> 3.352050 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 826 </td>
   <td style="text-align:right;"> 166 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 14 </td>
   <td style="text-align:right;"> 1.815981 </td>
   <td style="text-align:right;"> 1.655157 </td>
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
svi17_esl %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 2191 </td>
   <td style="text-align:right;"> 211 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 59.73274 </td>
   <td style="text-align:right;"> 0.4564126 </td>
   <td style="text-align:right;"> 2.725923 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 844 </td>
   <td style="text-align:right;"> 189 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 58.59181 </td>
   <td style="text-align:right;"> 0.7109005 </td>
   <td style="text-align:right;"> 6.940332 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 807 </td>
   <td style="text-align:right;"> 185 </td>
   <td style="text-align:right;"> 56 </td>
   <td style="text-align:right;"> 105.98585 </td>
   <td style="text-align:right;"> 6.9392813 </td>
   <td style="text-align:right;"> 13.036615 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1194 </td>
   <td style="text-align:right;"> 231 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 58.78775 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 4.923597 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1283 </td>
   <td style="text-align:right;"> 283 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 58.78775 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 4.582054 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 641 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 58.78775 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 9.171256 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2089 </td>
   <td style="text-align:right;"> 302 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 58.78775 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.814158 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 962 </td>
   <td style="text-align:right;"> 208 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 58.78775 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 6.110993 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 996 </td>
   <td style="text-align:right;"> 160 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 58.78775 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 5.902385 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2833 </td>
   <td style="text-align:right;"> 280 </td>
   <td style="text-align:right;"> 36 </td>
   <td style="text-align:right;"> 69.68501 </td>
   <td style="text-align:right;"> 1.2707377 </td>
   <td style="text-align:right;"> 2.456552 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2322 </td>
   <td style="text-align:right;"> 408 </td>
   <td style="text-align:right;"> 118 </td>
   <td style="text-align:right;"> 116.67048 </td>
   <td style="text-align:right;"> 5.0818260 </td>
   <td style="text-align:right;"> 4.944589 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 993 </td>
   <td style="text-align:right;"> 273 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 58.78775 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 5.920217 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2547 </td>
   <td style="text-align:right;"> 335 </td>
   <td style="text-align:right;"> 54 </td>
   <td style="text-align:right;"> 78.11530 </td>
   <td style="text-align:right;"> 2.1201413 </td>
   <td style="text-align:right;"> 3.054250 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2099 </td>
   <td style="text-align:right;"> 307 </td>
   <td style="text-align:right;"> 52 </td>
   <td style="text-align:right;"> 75.45197 </td>
   <td style="text-align:right;"> 2.4773702 </td>
   <td style="text-align:right;"> 3.576354 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1122 </td>
   <td style="text-align:right;"> 189 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 58.78775 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 5.239550 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2097 </td>
   <td style="text-align:right;"> 284 </td>
   <td style="text-align:right;"> 47 </td>
   <td style="text-align:right;"> 71.62402 </td>
   <td style="text-align:right;"> 2.2412971 </td>
   <td style="text-align:right;"> 3.402032 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1439 </td>
   <td style="text-align:right;"> 378 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 58.78775 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 4.085320 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 951 </td>
   <td style="text-align:right;"> 277 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 60.10824 </td>
   <td style="text-align:right;"> 1.6824395 </td>
   <td style="text-align:right;"> 6.301503 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1622 </td>
   <td style="text-align:right;"> 314 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 58.78775 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 3.624399 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1690 </td>
   <td style="text-align:right;"> 277 </td>
   <td style="text-align:right;"> 24 </td>
   <td style="text-align:right;"> 61.98387 </td>
   <td style="text-align:right;"> 1.4201183 </td>
   <td style="text-align:right;"> 3.660291 </td>
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
svi18_dis %>% select(summary_est, summary_moe, sum,sumMOE,per,perMOE) %>% 
  head(20) %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> sumMOE </th>
   <th style="text-align:right;"> per </th>
   <th style="text-align:right;"> perMOE </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1276 </td>
   <td style="text-align:right;"> 183 </td>
   <td style="text-align:right;"> 13 </td>
   <td style="text-align:right;"> 20.00000 </td>
   <td style="text-align:right;"> 1.018809 </td>
   <td style="text-align:right;"> 1.560573 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 463 </td>
   <td style="text-align:right;"> 147 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 21.63331 </td>
   <td style="text-align:right;"> 2.591793 </td>
   <td style="text-align:right;"> 4.599389 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 510 </td>
   <td style="text-align:right;"> 136 </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 17.69181 </td>
   <td style="text-align:right;"> 1.568628 </td>
   <td style="text-align:right;"> 3.443669 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 841 </td>
   <td style="text-align:right;"> 205 </td>
   <td style="text-align:right;"> 53 </td>
   <td style="text-align:right;"> 63.15061 </td>
   <td style="text-align:right;"> 6.302021 </td>
   <td style="text-align:right;"> 7.350180 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 734 </td>
   <td style="text-align:right;"> 221 </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 40.80441 </td>
   <td style="text-align:right;"> 4.768392 </td>
   <td style="text-align:right;"> 5.370591 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 260 </td>
   <td style="text-align:right;"> 122 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 6.527139 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1370 </td>
   <td style="text-align:right;"> 284 </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:right;"> 55.31727 </td>
   <td style="text-align:right;"> 5.912409 </td>
   <td style="text-align:right;"> 3.847244 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 376 </td>
   <td style="text-align:right;"> 158 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 4.513447 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 724 </td>
   <td style="text-align:right;"> 151 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 23.32381 </td>
   <td style="text-align:right;"> 2.209945 </td>
   <td style="text-align:right;"> 3.188378 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1835 </td>
   <td style="text-align:right;"> 149 </td>
   <td style="text-align:right;"> 144 </td>
   <td style="text-align:right;"> 62.64982 </td>
   <td style="text-align:right;"> 7.847411 </td>
   <td style="text-align:right;"> 3.354170 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1548 </td>
   <td style="text-align:right;"> 291 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 16.97056 </td>
   <td style="text-align:right;"> 0.000000 </td>
   <td style="text-align:right;"> 1.096290 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 575 </td>
   <td style="text-align:right;"> 216 </td>
   <td style="text-align:right;"> 29 </td>
   <td style="text-align:right;"> 36.05551 </td>
   <td style="text-align:right;"> 5.043478 </td>
   <td style="text-align:right;"> 5.977456 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1405 </td>
   <td style="text-align:right;"> 282 </td>
   <td style="text-align:right;"> 43 </td>
   <td style="text-align:right;"> 51.41984 </td>
   <td style="text-align:right;"> 3.060498 </td>
   <td style="text-align:right;"> 3.607855 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1270 </td>
   <td style="text-align:right;"> 234 </td>
   <td style="text-align:right;"> 136 </td>
   <td style="text-align:right;"> 125.57468 </td>
   <td style="text-align:right;"> 10.708661 </td>
   <td style="text-align:right;"> 9.688906 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 658 </td>
   <td style="text-align:right;"> 141 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 29.54657 </td>
   <td style="text-align:right;"> 2.431611 </td>
   <td style="text-align:right;"> 4.460026 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1484 </td>
   <td style="text-align:right;"> 217 </td>
   <td style="text-align:right;"> 73 </td>
   <td style="text-align:right;"> 66.09841 </td>
   <td style="text-align:right;"> 4.919137 </td>
   <td style="text-align:right;"> 4.395605 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 978 </td>
   <td style="text-align:right;"> 234 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 68.06614 </td>
   <td style="text-align:right;"> 10.020450 </td>
   <td style="text-align:right;"> 6.533733 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 634 </td>
   <td style="text-align:right;"> 236 </td>
   <td style="text-align:right;"> 39 </td>
   <td style="text-align:right;"> 44.38468 </td>
   <td style="text-align:right;"> 6.151420 </td>
   <td style="text-align:right;"> 6.615674 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 996 </td>
   <td style="text-align:right;"> 231 </td>
   <td style="text-align:right;"> 155 </td>
   <td style="text-align:right;"> 107.35455 </td>
   <td style="text-align:right;"> 15.562249 </td>
   <td style="text-align:right;"> 10.156298 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 850 </td>
   <td style="text-align:right;"> 190 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 15.62050 </td>
   <td style="text-align:right;"> 1.411765 </td>
   <td style="text-align:right;"> 1.810408 </td>
  </tr>
</tbody>
</table>






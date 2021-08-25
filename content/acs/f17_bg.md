---
title: "4 Social Vulnerability Index (BG)"
date: "2021-08-24"
categories: R
tags:
- R Markdown
- ACS
- Census data
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
vars %>% filter(name %in% c("B09002_001","B09002_008")) %>% kbl() %>% 
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
(Fami.Cild_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = "B09002_008", output = "wide", 
 summary_var = "B09002_001" , cache_table = T
) %>%  mutate(per= 100 * B09002_008E / summary_est) %>% 
  select(GEOID,B09002_008E, summary_est, per)) %>% 
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> B09002_008E </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> 186 </td>
   <td style="text-align:right;"> 516 </td>
   <td style="text-align:right;"> 36.04651 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> 97 </td>
   <td style="text-align:right;"> 97 </td>
   <td style="text-align:right;"> 100.00000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 114 </td>
   <td style="text-align:right;"> 0.00000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> 68 </td>
   <td style="text-align:right;"> 81 </td>
   <td style="text-align:right;"> 83.95062 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> 34 </td>
   <td style="text-align:right;"> 148 </td>
   <td style="text-align:right;"> 22.97297 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 216 </td>
   <td style="text-align:right;"> 0.00000 </td>
  </tr>
</tbody>
</table>

### 2 Population 5 or below/Total Population 



```r
vars %>% filter(name %in% c("B01001_003", "B01001_027")) %>% kbl() %>% 
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
(l5_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("B01001_003", "B01001_027"), output = "wide",
 summary_var = "B01001_001" , cache_table = T
) %>%  mutate(sum = B01001_003E + B01001_027E ,
              per= 100 * sum / summary_est) %>% 
  select(GEOID,B01001_003E, B01001_027E, sum, summary_est, per)) %>% 
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> B01001_003E </th>
   <th style="text-align:right;"> B01001_027E </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> 138 </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 155 </td>
   <td style="text-align:right;"> 2983 </td>
   <td style="text-align:right;"> 5.196111 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> 60 </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 538 </td>
   <td style="text-align:right;"> 17.657993 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 1652 </td>
   <td style="text-align:right;"> 1.815981 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 1090 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 1471 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> 55 </td>
   <td style="text-align:right;"> 48 </td>
   <td style="text-align:right;"> 103 </td>
   <td style="text-align:right;"> 1475 </td>
   <td style="text-align:right;"> 6.983051 </td>
  </tr>
</tbody>
</table>

## Elder Care Needs

### 3 Population 65 or above/Total Population


```r
g65_vars <- c("C18130_001","C18130_016")
g65.pov_vars <- c("C18130_018", "C18130_021") # C18130_016
vars %>% filter(name %in% c(g65_vars, g65.pov_vars)) %>% kbl() %>% 
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
   <td style="text-align:left;"> C18130_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> AGE BY DISABILITY STATUS BY POVERTY STATUS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C18130_016 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over: </td>
   <td style="text-align:left;"> AGE BY DISABILITY STATUS BY POVERTY STATUS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C18130_018 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over:!!With a disability:!!Income in the past 12-months below poverty level </td>
   <td style="text-align:left;"> AGE BY DISABILITY STATUS BY POVERTY STATUS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C18130_021 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over:!!No disability:!!Income in the past 12-months below poverty level </td>
   <td style="text-align:left;"> AGE BY DISABILITY STATUS BY POVERTY STATUS </td>
  </tr>
</tbody>
</table>




```r
(g65_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = "C18130_016", output = "wide",
 summary_var = "C18130_001" , cache_table = T
) %>%  mutate(per= 100 * C18130_016E / summary_est) %>% 
  select(GEOID, C18130_016E, summary_est, per)) %>% 
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> C18130_016E </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
</tbody>
</table>

### 4 Population 65 or above & below poverty/Pop. 65 or above


```r
(g65.pov_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("C18130_018", "C18130_021"), output = "wide",
 summary_var = "C18130_016" , cache_table = T
) %>%  mutate(sum= C18130_018E + C18130_021E,
              per= 100 * sum / summary_est) %>% 
  select(GEOID, C18130_018E, C18130_021E, sum, summary_est, per)) %>% 
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> C18130_018E </th>
   <th style="text-align:right;"> C18130_021E </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
</tbody>
</table>

## Disability

### Population with a disability/Total Population ( all age)


```r
vars %>% filter(name %in% c("C18130_003","C18130_010","C18130_017")) %>% kbl() %>% 
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
   <td style="text-align:left;"> C18130_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Under 18 years:!!With a disability: </td>
   <td style="text-align:left;"> AGE BY DISABILITY STATUS BY POVERTY STATUS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C18130_010 </td>
   <td style="text-align:left;"> Estimate!!Total:!!18 to 64 years:!!With a disability: </td>
   <td style="text-align:left;"> AGE BY DISABILITY STATUS BY POVERTY STATUS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C18130_017 </td>
   <td style="text-align:left;"> Estimate!!Total:!!65 years and over:!!With a disability: </td>
   <td style="text-align:left;"> AGE BY DISABILITY STATUS BY POVERTY STATUS </td>
  </tr>
</tbody>
</table>


```r
(dis_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("C18130_003","C18130_010","C18130_017"), output = 'wide',
 summary_var = "C18130_001" , cache_table = T
) %>%  mutate(sum= C18130_003E + C18130_010E + C18130_017E,
              per= 100 * sum / summary_est) %>% 
  select(GEOID, C18130_003E, C18130_010E, C18130_017E, sum, summary_est, per)) %>% 
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> C18130_003E </th>
   <th style="text-align:right;"> C18130_010E </th>
   <th style="text-align:right;"> C18130_017E </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
</tbody>
</table>

## Transportation needs

### 5 Workers using public transportation/Civilian pop. 16+ and employed


```r
vars %>% filter(name %in% c("B08301_010", "B23025_004")) %>% kbl() %>% 
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

"B23025_004" = "C24010_001"



```r
(g16.tran_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = "B08301_010", output = "wide",# c("C24010_001"),
 summary_var = "B23025_004" , cache_table = T
) %>%  mutate(per= 100 * B08301_010E / summary_est) %>% 
  select(GEOID, B08301_010E, summary_est, per)) %>% 
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> B08301_010E </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> 64 </td>
   <td style="text-align:right;"> 1248 </td>
   <td style="text-align:right;"> 5.1282051 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 227 </td>
   <td style="text-align:right;"> 7.4889868 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 1020 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 796 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 580 </td>
   <td style="text-align:right;"> 0.5172414 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 854 </td>
   <td style="text-align:right;"> 1.8735363 </td>
  </tr>
</tbody>
</table>

### 6 Occupied housing units without a vehicle/Occupied housing units


```r
vars %>% filter(name %in% c("B08201_002", "B25044_003", "B25044_010")) %>% kbl() %>% 
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
   <td style="text-align:left;"> B08201_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!No vehicle available </td>
   <td style="text-align:left;"> HOUSEHOLD SIZE BY VEHICLES AVAILABLE </td>
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

*B08201_002* no data at block group level



```r
(occ.0veh_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("B25044_003", "B25044_010"), output = "wide",
 summary_var = "B25044_001" , cache_table = T
) %>% mutate(sum = B25044_003E + B25044_010E,
             per = 100 * sum /summary_est) %>% 
  select(GEOID, B25044_003E, B25044_010E, sum, summary_est, per)) %>%
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> B25044_003E </th>
   <th style="text-align:right;"> B25044_010E </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> 22 </td>
   <td style="text-align:right;"> 425 </td>
   <td style="text-align:right;"> 447 </td>
   <td style="text-align:right;"> 1582 </td>
   <td style="text-align:right;"> 28.255373 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 202 </td>
   <td style="text-align:right;"> 4.950495 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 534 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 373 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 533 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 463 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
</tbody>
</table>

## Temporary Shelter and housing recovery needs

### 7 Vacant Housing units/Total housing units


```r
vac_vars <- c("B25002_001","B25002_002","B25002_003")
vars %>% filter(name %in% vac_vars) %>% kbl() %>% 
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
   <td style="text-align:left;"> B25002_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> OCCUPANCY STATUS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25002_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Occupied </td>
   <td style="text-align:left;"> OCCUPANCY STATUS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25002_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Vacant </td>
   <td style="text-align:left;"> OCCUPANCY STATUS </td>
  </tr>
</tbody>
</table>


```r
(vac_tract <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("B25002_003"), output = "wide",
 summary_var = "B25002_001" , cache_table = T
) %>%  mutate(per= 100 * B25002_003E / summary_est) %>% 
  select(GEOID, B25002_003E, summary_est, per)) %>% 
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> B25002_003E </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> 56 </td>
   <td style="text-align:right;"> 1638 </td>
   <td style="text-align:right;"> 3.418803 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 202 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> 74 </td>
   <td style="text-align:right;"> 608 </td>
   <td style="text-align:right;"> 12.171053 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 373 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 533 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 463 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
</tbody>
</table>

### 8 Persons in renter occupied housing units/Total occupied housing units


```r
vars %>% filter(name %in% c("B25008_001","B25008_002","B25008_003")) %>% kbl() %>% 
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
   <td style="text-align:left;"> B25008_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> TOTAL POPULATION IN OCCUPIED HOUSING UNITS BY TENURE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25008_002 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Owner occupied </td>
   <td style="text-align:left;"> TOTAL POPULATION IN OCCUPIED HOUSING UNITS BY TENURE </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B25008_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Renter occupied </td>
   <td style="text-align:left;"> TOTAL POPULATION IN OCCUPIED HOUSING UNITS BY TENURE </td>
  </tr>
</tbody>
</table>


```r
(vrent_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("B25002_002","B25008_002","B25008_003"), output = "wide",
 summary_var = "B25008_001" , cache_table = T
)) %>% 
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:left;"> NAME </th>
   <th style="text-align:right;"> B25002_002E </th>
   <th style="text-align:right;"> B25002_002M </th>
   <th style="text-align:right;"> B25008_002E </th>
   <th style="text-align:right;"> B25008_002M </th>
   <th style="text-align:right;"> B25008_003E </th>
   <th style="text-align:right;"> B25008_003M </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:left;"> Block Group 2, Census Tract 222.01, Clackamas County, Oregon </td>
   <td style="text-align:right;"> 1582 </td>
   <td style="text-align:right;"> 178 </td>
   <td style="text-align:right;"> 427 </td>
   <td style="text-align:right;"> 216 </td>
   <td style="text-align:right;"> 2502 </td>
   <td style="text-align:right;"> 465 </td>
   <td style="text-align:right;"> 2929 </td>
   <td style="text-align:right;"> 473 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:left;"> Block Group 1, Census Tract 222.01, Clackamas County, Oregon </td>
   <td style="text-align:right;"> 202 </td>
   <td style="text-align:right;"> 84 </td>
   <td style="text-align:right;"> 208 </td>
   <td style="text-align:right;"> 125 </td>
   <td style="text-align:right;"> 330 </td>
   <td style="text-align:right;"> 317 </td>
   <td style="text-align:right;"> 538 </td>
   <td style="text-align:right;"> 322 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:left;"> Block Group 2, Census Tract 235, Clackamas County, Oregon </td>
   <td style="text-align:right;"> 534 </td>
   <td style="text-align:right;"> 126 </td>
   <td style="text-align:right;"> 1652 </td>
   <td style="text-align:right;"> 514 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 1652 </td>
   <td style="text-align:right;"> 514 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:left;"> Block Group 5, Census Tract 235, Clackamas County, Oregon </td>
   <td style="text-align:right;"> 373 </td>
   <td style="text-align:right;"> 147 </td>
   <td style="text-align:right;"> 920 </td>
   <td style="text-align:right;"> 410 </td>
   <td style="text-align:right;"> 170 </td>
   <td style="text-align:right;"> 219 </td>
   <td style="text-align:right;"> 1090 </td>
   <td style="text-align:right;"> 466 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:left;"> Block Group 1, Census Tract 235, Clackamas County, Oregon </td>
   <td style="text-align:right;"> 533 </td>
   <td style="text-align:right;"> 145 </td>
   <td style="text-align:right;"> 1301 </td>
   <td style="text-align:right;"> 425 </td>
   <td style="text-align:right;"> 164 </td>
   <td style="text-align:right;"> 198 </td>
   <td style="text-align:right;"> 1465 </td>
   <td style="text-align:right;"> 456 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:left;"> Block Group 1, Census Tract 238, Clackamas County, Oregon </td>
   <td style="text-align:right;"> 463 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 1134 </td>
   <td style="text-align:right;"> 346 </td>
   <td style="text-align:right;"> 341 </td>
   <td style="text-align:right;"> 448 </td>
   <td style="text-align:right;"> 1475 </td>
   <td style="text-align:right;"> 502 </td>
  </tr>
</tbody>
</table>

### 9 Non-white population/Total population


```r
nonWhi_vars <- c("B02001_001","B02001_002")
vars %>% filter(name %in% nonWhi_vars) %>% kbl() %>% 
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
(nonWhi_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("B02001_002"), output = "wide",
 summary_var = "B02001_001" , cache_table = T
) %>%  mutate(per= 100 * (1 - B02001_002E / summary_est)) %>% 
  select(GEOID, B02001_002E, summary_est, per)) %>% 
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> B02001_002E </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> 1893 </td>
   <td style="text-align:right;"> 2983 </td>
   <td style="text-align:right;"> 36.5403956 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> 471 </td>
   <td style="text-align:right;"> 538 </td>
   <td style="text-align:right;"> 12.4535316 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> 1595 </td>
   <td style="text-align:right;"> 1652 </td>
   <td style="text-align:right;"> 3.4503632 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> 1090 </td>
   <td style="text-align:right;"> 1090 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> 1419 </td>
   <td style="text-align:right;"> 1471 </td>
   <td style="text-align:right;"> 3.5350102 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> 1461 </td>
   <td style="text-align:right;"> 1475 </td>
   <td style="text-align:right;"> 0.9491525 </td>
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


```r
(group_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("B26001_001"), output = "wide",
 summary_var = "B01003_001" , cache_table = T
) %>%  mutate(per= 100 * B26001_001E / summary_est) %>% 
  select(GEOID, B26001_001E, summary_est, per)) %>% 
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> B26001_001E </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 2983 </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 538 </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 1652 </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 1090 </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 1471 </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 1475 </td>
   <td style="text-align:right;"> NA </td>
  </tr>
</tbody>
</table>

### 11 Housing units built 20 years ago/Total housing Units


```r
vars %>% filter(name %in% c("B25034_002","B25034_003","B25034_004")) %>% kbl() %>% 
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
(H.g20_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("B25034_002","B25034_003","B25034_004"), output = "wide",
 summary_var = "B25034_001" , cache_table = T
) %>% mutate(sum = B25034_002E + B25034_003E + B25034_004E,
             per = 100 * (1 - sum /summary_est)) %>% 
  select(GEOID, B25034_002E, B25034_003E, B25034_004E, sum, summary_est, per)) %>%
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> B25034_002E </th>
   <th style="text-align:right;"> B25034_003E </th>
   <th style="text-align:right;"> B25034_004E </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 285 </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 370 </td>
   <td style="text-align:right;"> 1638 </td>
   <td style="text-align:right;"> 77.41148 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 22 </td>
   <td style="text-align:right;"> 22 </td>
   <td style="text-align:right;"> 202 </td>
   <td style="text-align:right;"> 89.10891 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> 56 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 121 </td>
   <td style="text-align:right;"> 177 </td>
   <td style="text-align:right;"> 608 </td>
   <td style="text-align:right;"> 70.88816 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 373 </td>
   <td style="text-align:right;"> 94.63807 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 14 </td>
   <td style="text-align:right;"> 87 </td>
   <td style="text-align:right;"> 101 </td>
   <td style="text-align:right;"> 533 </td>
   <td style="text-align:right;"> 81.05066 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 33 </td>
   <td style="text-align:right;"> 33 </td>
   <td style="text-align:right;"> 463 </td>
   <td style="text-align:right;"> 92.87257 </td>
  </tr>
</tbody>
</table>

### 12 Mobile Homes/Total housing units


```r
vars %>% filter(name %in% "B25024_010") %>% kbl() %>% 
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
   <td style="text-align:left;"> B25024_010 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Mobile home </td>
   <td style="text-align:left;"> UNITS IN STRUCTURE </td>
  </tr>
</tbody>
</table>


```r
(mob.H_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = "B25024_010", output = "wide",# c("B25024_011"), 
 summary_var = "B25024_001" , cache_table = T
) %>%  mutate(per= 100 * B25024_010E / summary_est) %>% 
  select(GEOID, B25024_010E, summary_est, per)) %>% 
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> B25024_010E </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> 63 </td>
   <td style="text-align:right;"> 1638 </td>
   <td style="text-align:right;"> 3.846154 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> 68 </td>
   <td style="text-align:right;"> 202 </td>
   <td style="text-align:right;"> 33.663366 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> 117 </td>
   <td style="text-align:right;"> 608 </td>
   <td style="text-align:right;"> 19.243421 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 373 </td>
   <td style="text-align:right;"> 26.273458 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> 196 </td>
   <td style="text-align:right;"> 533 </td>
   <td style="text-align:right;"> 36.772983 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> 123 </td>
   <td style="text-align:right;"> 463 </td>
   <td style="text-align:right;"> 26.565875 </td>
  </tr>
</tbody>
</table>

### 13 Persons in poverty/Total population


```r
vars %>% filter(name %in% c("C17002_002","C17002_003")) %>% kbl() %>% 
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

"B17001_001" (county level)= "B17020_002" (tract level)= "C17002_002" + "C17002_003"



```r
(pov_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("C17002_002","C17002_003"), output = "wide",
 summary_var = "C17002_001" , cache_table = T
) %>% mutate(sum = C17002_002E + C17002_003E,
             per = 100 * sum /summary_est) %>% 
  select(GEOID, C17002_002E, C17002_003E, sum, summary_est, per)) %>%
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> C17002_002E </th>
   <th style="text-align:right;"> C17002_003E </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 319 </td>
   <td style="text-align:right;"> 369 </td>
   <td style="text-align:right;"> 2866 </td>
   <td style="text-align:right;"> 12.875087 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> 49 </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 79 </td>
   <td style="text-align:right;"> 525 </td>
   <td style="text-align:right;"> 15.047619 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 201 </td>
   <td style="text-align:right;"> 201 </td>
   <td style="text-align:right;"> 1652 </td>
   <td style="text-align:right;"> 12.167070 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 136 </td>
   <td style="text-align:right;"> 136 </td>
   <td style="text-align:right;"> 1090 </td>
   <td style="text-align:right;"> 12.477064 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 42 </td>
   <td style="text-align:right;"> 42 </td>
   <td style="text-align:right;"> 1471 </td>
   <td style="text-align:right;"> 2.855201 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> 39 </td>
   <td style="text-align:right;"> 66 </td>
   <td style="text-align:right;"> 105 </td>
   <td style="text-align:right;"> 1475 </td>
   <td style="text-align:right;"> 7.118644 </td>
  </tr>
</tbody>
</table>

## Civic Capacity needs

### 14 Occupied housing units without a telephone/Total occupied Hus


```r
vars %>% filter(name %in% c("B25043_001","B25043_007","B25043_016")) %>% kbl() %>% 
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
(occ.tel_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("B25043_007","B25043_016"), output = "wide",
 summary_var = "B25043_001" , cache_table = T
) %>% mutate(sum = B25043_007E + B25043_016E,
             per = 100 * sum /summary_est) %>% 
  select(GEOID, B25043_007E, B25043_016E, sum, summary_est, per)) %>%
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> B25043_007E </th>
   <th style="text-align:right;"> B25043_016E </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 1582 </td>
   <td style="text-align:right;"> 1.074589 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 202 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 534 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 373 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> 18 </td>
   <td style="text-align:right;"> 22 </td>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;"> 533 </td>
   <td style="text-align:right;"> 7.504690 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 463 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
</tbody>
</table>


### 15 Population above 25 with less than high school/Total pop above 25


```r
g25.HS_vars <- c("B21003_001","B21003_003","B21003_008")
vars %>% filter(name %in% g25.HS_vars) %>% kbl() %>% 
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
   <td style="text-align:left;"> B21003_001 </td>
   <td style="text-align:left;"> Estimate!!Total: </td>
   <td style="text-align:left;"> VETERAN STATUS BY EDUCATIONAL ATTAINMENT FOR THE CIVILIAN POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B21003_003 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Veteran:!!Less than high school graduate </td>
   <td style="text-align:left;"> VETERAN STATUS BY EDUCATIONAL ATTAINMENT FOR THE CIVILIAN POPULATION 25 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B21003_008 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Nonveteran:!!Less than high school graduate </td>
   <td style="text-align:left;"> VETERAN STATUS BY EDUCATIONAL ATTAINMENT FOR THE CIVILIAN POPULATION 25 YEARS AND OVER </td>
  </tr>
</tbody>
</table>


```r
(g25.HS_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("B21003_003","B21003_008"), output = "wide",
 summary_var = "B21003_001" , cache_table = T
) %>% mutate(sum = B21003_003E + B21003_008E,
             per = 100 * sum /summary_est) %>% 
  select(GEOID, B21003_003E, B21003_008E, sum, summary_est, per)) %>%
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> B21003_003E </th>
   <th style="text-align:right;"> B21003_008E </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
</tbody>
</table>

### 16 Population 16+ in labor force and unemployed/Pop in Labor force 16+


```r
vars %>% filter(name %in% c("B23025_002","B23025_005")) %>% kbl() %>% 
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
(g16.unem_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("B23025_005"), output = "wide",
 summary_var = "B23025_002" , cache_table = T
) %>%  mutate(per= 100 * B23025_005E / summary_est) %>% 
  select(GEOID, B23025_005E, summary_est, per)) %>% 
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> B23025_005E </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 1248 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 257 </td>
   <td style="text-align:right;"> 11.673152 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> 62 </td>
   <td style="text-align:right;"> 1082 </td>
   <td style="text-align:right;"> 5.730129 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 796 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> 22 </td>
   <td style="text-align:right;"> 602 </td>
   <td style="text-align:right;"> 3.654485 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 854 </td>
   <td style="text-align:right;"> 0.000000 </td>
  </tr>
</tbody>
</table>

### 17 Population above 5 that speak English not well or not at all/Pop>5


```r
vars %>% filter(name %in% c("B06007_005","B06007_008")) %>% kbl() %>% 
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
   <td style="text-align:left;"> B06007_005 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Speak Spanish:!!Speak English less than "very well" </td>
   <td style="text-align:left;"> PLACE OF BIRTH BY LANGUAGE SPOKEN AT HOME AND ABILITY TO SPEAK ENGLISH IN THE UNITED STATES </td>
  </tr>
  <tr>
   <td style="text-align:left;"> B06007_008 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Speak other languages:!!Speak English less than "very well" </td>
   <td style="text-align:left;"> PLACE OF BIRTH BY LANGUAGE SPOKEN AT HOME AND ABILITY TO SPEAK ENGLISH IN THE UNITED STATES </td>
  </tr>
</tbody>
</table>


```r
(nonE_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = c("B06007_005","B06007_008"), output = "wide",
 summary_var = "B06007_001" , cache_table = T
) %>% mutate(sum = B06007_005E+B06007_008E,
             per = 100 * sum /summary_est) %>% 
  select(GEOID, B06007_005E, B06007_008E, sum, summary_est, per)) %>%
  head() %>% kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:right;"> B06007_005E </th>
   <th style="text-align:right;"> B06007_008E </th>
   <th style="text-align:right;"> sum </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> per </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
</tbody>
</table>


```r
# g5.nonE_vars <- (vars %>% filter(grepl("B16001_",name),grepl("Speak English less than \"very well\"",label)))$name
# g5.nonE_vars <- (vars %>% filter(grepl("B16008_",name),grepl("Speak English less than \"very well\"",label)))$name
g5.nonE_vars <- (vars %>% filter(grepl("C16001_",name),grepl("Speak English less than \"very well\"",label)))$name
vars %>% filter(name %in% g5.nonE_vars) %>% kbl() %>% 
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
   <td style="text-align:left;"> C16001_005 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Spanish:!!Speak English less than "very well" </td>
   <td style="text-align:left;"> LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C16001_008 </td>
   <td style="text-align:left;"> Estimate!!Total:!!French, Haitian, or Cajun:!!Speak English less than "very well" </td>
   <td style="text-align:left;"> LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C16001_011 </td>
   <td style="text-align:left;"> Estimate!!Total:!!German or other West Germanic languages:!!Speak English less than "very well" </td>
   <td style="text-align:left;"> LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C16001_014 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Russian, Polish, or other Slavic languages:!!Speak English less than "very well" </td>
   <td style="text-align:left;"> LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C16001_017 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Other Indo-European languages:!!Speak English less than "very well" </td>
   <td style="text-align:left;"> LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C16001_020 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Korean:!!Speak English less than "very well" </td>
   <td style="text-align:left;"> LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C16001_023 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Chinese (incl. Mandarin, Cantonese):!!Speak English less than "very well" </td>
   <td style="text-align:left;"> LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C16001_026 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Vietnamese:!!Speak English less than "very well" </td>
   <td style="text-align:left;"> LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C16001_029 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Tagalog (incl. Filipino):!!Speak English less than "very well" </td>
   <td style="text-align:left;"> LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C16001_032 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Other Asian and Pacific Island languages:!!Speak English less than "very well" </td>
   <td style="text-align:left;"> LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C16001_035 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Arabic:!!Speak English less than "very well" </td>
   <td style="text-align:left;"> LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C16001_038 </td>
   <td style="text-align:left;"> Estimate!!Total:!!Other and unspecified languages:!!Speak English less than "very well" </td>
   <td style="text-align:left;"> LANGUAGE SPOKEN AT HOME FOR THE POPULATION 5 YEARS AND OVER </td>
  </tr>
</tbody>
</table>


```r
g5.nonE_bg <- get_acs(
  state = "41",
  county = tri_cou,
  geography = "block group",
  variables = g5.nonE_vars, output = "wide",
 summary_var = "C16001_001" , cache_table = T
)

g5.nonE_bg%>% mutate(Sum = rowSums(across(paste0(g5.nonE_vars,"E")), na.rm = TRUE)) %>% # rowSums(g5.nonE_tract[,paste0(g5.nonE_vars,"E")])
        dplyr::select(-starts_with("C")) %>% head() %>% kbl() %>% # c(starts_with("B")&ends_with("E")
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), font_size = 7)
```

<table class="table table-striped table-hover table-condensed" style="font-size: 7px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> GEOID </th>
   <th style="text-align:left;"> NAME </th>
   <th style="text-align:right;"> summary_est </th>
   <th style="text-align:right;"> summary_moe </th>
   <th style="text-align:right;"> Sum </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 410050222012 </td>
   <td style="text-align:left;"> Block Group 2, Census Tract 222.01, Clackamas County, Oregon </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050222011 </td>
   <td style="text-align:left;"> Block Group 1, Census Tract 222.01, Clackamas County, Oregon </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235002 </td>
   <td style="text-align:left;"> Block Group 2, Census Tract 235, Clackamas County, Oregon </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235005 </td>
   <td style="text-align:left;"> Block Group 5, Census Tract 235, Clackamas County, Oregon </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050235001 </td>
   <td style="text-align:left;"> Block Group 1, Census Tract 235, Clackamas County, Oregon </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 410050238001 </td>
   <td style="text-align:left;"> Block Group 1, Census Tract 238, Clackamas County, Oregon </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
</tbody>
</table>

```r
# https://www.tidyverse.org/blog/2020/04/dplyr-1-0-0-colwise/
# https://github.com/tidyverse/dplyr/issues/4544
```

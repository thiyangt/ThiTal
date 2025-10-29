---
title: "Covid-19/ Coronavirus data in Sri Lanka"
author: Thiyanga Talagala
date: '2021-10-20'
category: [R, data, ggplot, tidyverse]
tag: [R, data, ggplot, tidyverse]
summary: "The 2019 Novel Coronavirus COVID-19 (2019-nCoV) Data in Sri Lanka"
---



![](https://github.com/thiyangt/covid19srilanka/blob/main/man/figures/hex.png?raw=true)

The `covid19srilanka` package provides a tidy format dataset of the 2019 Novel Coronavirus COVID-19 (2019-nCoV) epidemic in Sri Lanka

# Package installation


You can install the development version from [GitHub](https://github.com/thiyangt/covid19srilanka) with:

```r
# install.packages("devtools")
devtools::install_github("thiyangt/covid19srilanka")
```

# Snapshot of Avaliable Datasets

## covid.cases

`covid.cases` provides Covid-19 Cases by Type (Confirmed, Recovered, Death).


``` r
library(covid19srilanka)
data("covid.cases")
dplyr::glimpse(covid.cases)
```

```
## Rows: 2,200
## Columns: 3
## $ Date  <date> 2020-03-29, 2020-03-29, 2020-03-29, 2020-03-29, 2020-03-30, 202…
## $ Type  <chr> "Confirmed", "Recovered", "Deaths", "Active", "Confirmed", "Reco…
## $ Count <dbl> 115, 10, 1, 104, 120, 11, 1, 108, 122, 16, 2, 104, 143, 18, 2, 1…
```

``` r
head(covid.cases)
```

```
## # A tibble: 6 × 3
##   Date       Type      Count
##   <date>     <chr>     <dbl>
## 1 2020-03-29 Confirmed   115
## 2 2020-03-29 Recovered    10
## 3 2020-03-29 Deaths        1
## 4 2020-03-29 Active      104
## 5 2020-03-30 Confirmed   120
## 6 2020-03-30 Recovered    11
```

## district.wise.cases

`district.wise.cases` provides daily summary of the Coronavirus (COVID-19) cases by province.


``` r
data("district.wise.cases")
dplyr::glimpse(district.wise.cases)
```

```
## Rows: 832
## Columns: 3
## $ Date     <date> 2021-08-01, 2021-08-01, 2021-08-01, 2021-08-01, 2021-08-01, …
## $ District <chr> "Colombo", "Gampaha", "Kalutara", "Kandy", "Kurunagala", "Gal…
## $ Count    <dbl> 71267, 56085, 33300, 14576, 15327, 14841, 12267, 7778, 5694, …
```

``` r
head(district.wise.cases)
```

```
## # A tibble: 6 × 3
##   Date       District   Count
##   <date>     <chr>      <dbl>
## 1 2021-08-01 Colombo    71267
## 2 2021-08-01 Gampaha    56085
## 3 2021-08-01 Kalutara   33300
## 4 2021-08-01 Kandy      14576
## 5 2021-08-01 Kurunagala 15327
## 6 2021-08-01 Galle      14841
```

## vaccination

`vaccination` provides daily summary of vaccination details


``` r
data("vaccination")
dplyr::glimpse(vaccination)
```

```
## Rows: 471
## Columns: 4
## $ Date          <date> 2021-04-29, 2021-04-29, 2021-04-30, 2021-04-30, 2021-05…
## $ Vaccine       <chr> "Covishield Vaccine", "Sinopharm Vaccine", "Covishield V…
## $ `first dose`  <dbl> 925242, 2469, 925242, 2865, 925242, 2865, 925242, 2865, …
## $ `Second dose` <dbl> 3445, 2435, 22919, 2435, 60757, 2435, 85653, 2435, 94436…
```

``` r
head(vaccination)
```

```
## # A tibble: 6 × 4
##   Date       Vaccine            `first dose` `Second dose`
##   <date>     <chr>                     <dbl>         <dbl>
## 1 2021-04-29 Covishield Vaccine       925242          3445
## 2 2021-04-29 Sinopharm Vaccine          2469          2435
## 3 2021-04-30 Covishield Vaccine       925242         22919
## 4 2021-04-30 Sinopharm Vaccine          2865          2435
## 5 2021-05-01 Covishield Vaccine       925242         60757
## 6 2021-05-01 Sinopharm Vaccine          2865          2435
```

Please cite the package as follows

Thiyanga S. Talagala, covid19srilanka: a tidy format dataset of the 2019 Novel Coronavirus COVID-19 (2019-nCoV) epidemic in Sri Lanka , (2021), GitHub repository, https://github.com/thiyangt/covid19srilanka

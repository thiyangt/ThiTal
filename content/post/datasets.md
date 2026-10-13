---
title: "Working with built-in data sets in R"
author: Thiyanga S. Talagala
date: '2020-08-31'
categories: [R]
tags: [R, ggplot, fable]
summary: "How to view datasets in a particular package, or or list the available data sets? "
---

### To view list of data sets available in a particular package or a group of packages.



``` r
vcdExtra::datasets(c("ggplot2", "forecast"))
```

```
Loading package: ggplot2 
Loading package: forecast 
```

```
    Package           Item      class      dim
1   ggplot2       diamonds data.frame 53940x10
2   ggplot2      economics data.frame    574x6
3   ggplot2 economics_long data.frame   2870x4
4   ggplot2      faithfuld data.frame   5625x3
5   ggplot2    luv_colours data.frame    657x4
6   ggplot2        midwest data.frame   437x28
7   ggplot2            mpg data.frame   234x11
8   ggplot2         msleep data.frame    83x11
9   ggplot2   presidential data.frame     12x4
10  ggplot2          seals data.frame   1155x4
11  ggplot2      txhousing data.frame   8602x9
12 forecast            gas         ts      476
13 forecast           gold         ts     1108
14 forecast         taylor         ts     4032
15 forecast        wineind         ts      176
16 forecast       woolyrnq         ts      119
                                                               Title
1                           Prices of over 50,000 round cut diamonds
2                                            US economic time series
3                                            US economic time series
4                           2d density estimate of Old Faithful data
5                                            'colors()' in Luv space
6                                               Midwest demographics
7  Fuel economy data from 1999 to 2008 for 38 popular models of cars
8       An updated and expanded version of the mammals sleep dataset
9                    Terms of 12 presidents from Eisenhower to Trump
10                                    Vector field of seal movements
11                                               Housing sales in TX
12                                 Australian monthly gas production
13                                         Daily morning gold prices
14                                    Half-hourly electricity demand
15                                       Australian total wine sales
16                 Quarterly production of woollen yarn in Australia
```


### To view data sets in package `datasets`. 


``` r
data() 
```

This opens a file called "R data sets" in the Code-Editor window as below.

<img src="/post/datafiles.PNG" alt="final image" width="800"/>


### To list the data sets in all *available* packages

`data(package = .packages(all.available = TRUE))`.


This opens a file called "R data sets" in the Code- Editor widow, listing datasets as

```r
Data sets in package ‘alr4’:

...


Data sets in package ‘asbio’:

...

.

.

.

```

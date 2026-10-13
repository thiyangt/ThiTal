---
title: "Zoom Your Plots with ggforce"
author: Thiyanga Talagala
date: '2022-03-28'
categories: [R, tidyverse, ggplot2, scatterplot]
tags: [R, tidyverse, ggplot2]
summary: "You can use facet_zoom from the ggforce package to zoom out graphs instead of using your mouse (Contextual zoom)."
---



To enlarge a section of data in your `ggplots`, use the `facet_zoom` function in the [ggforce](https://rdrr.io/cran/ggforce/man/facet_zoom.html) package. To illustrate I am using the [gapminder](https://cran.r-project.org/web/packages/gapminder/README.html) dataset in [gapminder](https://cran.r-project.org/web/packages/gapminder/README.html) package.

## Load necessary 


``` r
library(tidyverse)
library(RColorBrewer)
library(ggforce)
library(gapminder)
```

## Set the theme for plots


``` r
theme_set(theme_bw())
```



## Zoom according to a  continuous scale variable

**zoom the Y axis**


``` r
ggplot(gapminder, aes(y=lifeExp, x=gdpPercap)) + geom_point() + coord_fixed() +  
  facet_zoom(ylim = c(60, 80)) 
```

<img src="/post/ggforce_files/figure-html/unnamed-chunk-3-1.png" alt="" width="672" />

**zoom the X axis**


``` r
ggplot(gapminder, aes(y=lifeExp, x=gdpPercap)) + geom_point() + coord_fixed() +   
  facet_zoom(xlim = c(0, 10000)) 
```

<img src="/post/ggforce_files/figure-html/unnamed-chunk-4-1.png" alt="" width="672" />

**zoom the X axis and the Y axis**


``` r
ggplot(gapminder, aes(y=lifeExp, x=gdpPercap)) + geom_point() + coord_fixed() +  
  facet_zoom(xlim = c(0, 10000), ylim=c(60, 80)) 
```

<img src="/post/ggforce_files/figure-html/unnamed-chunk-5-1.png" alt="" width="672" />




## Zoom according to a qualitative variable

**zoom the Y axis**


``` r
ggplot(gapminder, aes(y=lifeExp, x=gdpPercap, col=continent)) + geom_point() + 
  coord_fixed() + 
  scale_color_brewer(palette = "Dark2") +
  facet_zoom(y = continent == 'Oceania') 
```

<img src="/post/ggforce_files/figure-html/unnamed-chunk-6-1.png" alt="" width="672" />

**zoom the X axis**


``` r
ggplot(gapminder, aes(y=lifeExp, x=gdpPercap, col=continent)) + geom_point() + 
  coord_fixed() + 
  scale_color_brewer(palette = "Dark2") +
  facet_zoom(x = continent == 'Oceania') 
```

<img src="/post/ggforce_files/figure-html/unnamed-chunk-7-1.png" alt="" width="672" />

**zoom the X axis and the Y axis**


``` r
ggplot(gapminder, aes(y=lifeExp, x=gdpPercap, col=continent)) + geom_point() + 
  coord_fixed() + 
  scale_color_brewer(palette = "Dark2") +
  facet_zoom(xy = continent == 'Oceania') 
```

<img src="/post/ggforce_files/figure-html/unnamed-chunk-8-1.png" alt="" width="672" />


``` r
ggplot(gapminder, aes(y=lifeExp, x=gdpPercap, col=continent)) + geom_point() + 
  coord_fixed() + 
  scale_color_brewer(palette = "Dark2") +
  facet_zoom(xy = continent == 'Oceania', split = TRUE) 
```

<img src="/post/ggforce_files/figure-html/unnamed-chunk-9-1.png" alt="" width="672" />

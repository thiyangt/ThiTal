---
title: "Summarizing with dplyr"
author: Thiyanga Talagala
date: '2019-05-18'
categories: [dplyr]
tags: [R, dplyr]
summary: "Summarizing variables with dplyr"
---

Packages


``` r
library(tidyverse)
```

Load `iris` data set


``` r
data("iris")
head(iris)
```

```
##   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
## 1          5.1         3.5          1.4         0.2  setosa
## 2          4.9         3.0          1.4         0.2  setosa
## 3          4.7         3.2          1.3         0.2  setosa
## 4          4.6         3.1          1.5         0.2  setosa
## 5          5.0         3.6          1.4         0.2  setosa
## 6          5.4         3.9          1.7         0.4  setosa
```


## `summarise`: to summarize only a single column


``` r
iris %>% group_by(Species) %>% summarise(mean(Sepal.Length))
```

```
## # A tibble: 3 × 2
##   Species    `mean(Sepal.Length)`
##   <fct>                     <dbl>
## 1 setosa                     5.01
## 2 versicolor                 5.94
## 3 virginica                  6.59
```

## `summarise_all`: to summarize all columns


``` r
iris %>% group_by(Species) %>% summarise_all(.funs = c(mean="mean"))
```

```
## # A tibble: 3 × 5
##   Species  Sepal.Length_mean Sepal.Width_mean Petal.Length_mean Petal.Width_mean
##   <fct>                <dbl>            <dbl>             <dbl>            <dbl>
## 1 setosa                5.01             3.43              1.46            0.246
## 2 versico…              5.94             2.77              4.26            1.33 
## 3 virgini…              6.59             2.97              5.55            2.03
```


## `summarise_at`: to summarize only certain columns


``` r
iris %>% group_by(Species) %>% summarise_at(
  .vars = vars(Sepal.Length, Sepal.Width),
  .funs = c(mean="mean"))
```

```
## # A tibble: 3 × 3
##   Species    Sepal.Length_mean Sepal.Width_mean
##   <fct>                  <dbl>            <dbl>
## 1 setosa                  5.01             3.43
## 2 versicolor              5.94             2.77
## 3 virginica               6.59             2.97
```

## `summarise_if`


``` r
iris %>% group_by(Species) %>% 
  summarise_if(.predicate = function(x) is.numeric(x),
               .funs = funs(mean="mean"))
```

```
## Warning: `funs()` was deprecated in dplyr 0.8.0.
## ℹ Please use a list of either functions or lambdas:
## 
## # Simple named list: list(mean = mean, median = median)
## 
## # Auto named with `tibble::lst()`: tibble::lst(mean, median)
## 
## # Using lambdas list(~ mean(., trim = .2), ~ median(., na.rm = TRUE))
## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was
## generated.
```

```
## # A tibble: 3 × 5
##   Species  Sepal.Length_mean Sepal.Width_mean Petal.Length_mean Petal.Width_mean
##   <fct>                <dbl>            <dbl>             <dbl>            <dbl>
## 1 setosa                5.01             3.43              1.46            0.246
## 2 versico…              5.94             2.77              4.26            1.33 
## 3 virgini…              6.59             2.97              5.55            2.03
```

**pass multiple functions**


``` r
iris %>% group_by(Species) %>% 
  summarise_if(.predicate = function(x) is.numeric(x),
               .funs = funs(mean="mean", Sd="sd"))
```

```
## Warning: `funs()` was deprecated in dplyr 0.8.0.
## ℹ Please use a list of either functions or lambdas:
## 
## # Simple named list: list(mean = mean, median = median)
## 
## # Auto named with `tibble::lst()`: tibble::lst(mean, median)
## 
## # Using lambdas list(~ mean(., trim = .2), ~ median(., na.rm = TRUE))
## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was
## generated.
```

```
## # A tibble: 3 × 9
##   Species  Sepal.Length_mean Sepal.Width_mean Petal.Length_mean Petal.Width_mean
##   <fct>                <dbl>            <dbl>             <dbl>            <dbl>
## 1 setosa                5.01             3.43              1.46            0.246
## 2 versico…              5.94             2.77              4.26            1.33 
## 3 virgini…              6.59             2.97              5.55            2.03 
## # ℹ 4 more variables: Sepal.Length_Sd <dbl>, Sepal.Width_Sd <dbl>,
## #   Petal.Length_Sd <dbl>, Petal.Width_Sd <dbl>
```

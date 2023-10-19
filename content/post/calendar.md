---
title: "Organize your priorities using CalendR package in R"
date: "2021-02-10"
summary: "Maintaining a calendar to organize your events allows for having more smooth and productive day. In this post, I will show you some basic functionalities in CalendaR package."
---



It is important to maintain a calendar in order to budget your time well.  In this post, I will show you some basic functionalities of `calendR` package in R. You can find more information [here](https://r-coder.com/calendar-plot-r/).

### Load package


```r
library(calendR)
```

### 1. Load calendar - 2021


```r
calendR(year = 2021, # Set the year
        start = "M",  # Set the first day of the calendar week as Monday (optional argument)
        special.days = "weekend", # Colour  weekends (optional argument),
        text.size = 4,
        special.col = "#b2df8a") # background colour for weekends (optional arguments)
```

<img src="/post/calendar_files/figure-html/unnamed-chunk-2-1.png" width="1440" />


### 2. Mark events


```r
events <- rep(NA, 365)

# Event dates
events[100:200] <- "2nd semester"
events[213:240] <- "Examination"
events[300:310] <- "Conference"
events[359] <- "Christmas" 

calendR(year = 2021,
        special.days = events,
        start = "M", 
        special.col = c("#1b9e77", "#d95f02", "#7570b3", "#e7298a"),
        text.size = 4,
        legend.pos = "right") 
```

<img src="/post/calendar_files/figure-html/unnamed-chunk-3-1.png" width="1440" />


### 3. Monthly plan


```r
calendR(year = 2021, month = 2,
          text = c("Exam", "Exam", # Event labels
                 "RLadies"), 
        text.pos = c(18, 20, 23), # Events dates texts 
        text.size = 4.5,          # Font size of the labels
        text.col = "#1b9e77")
```

```
Warning in text != "" && is.null(text.pos): 'length(x) = 3 > 1' in coercion to
'logical(1)'
```

```
Warning in text == "" && !is.null(text.pos): 'length(x) = 3 > 1' in coercion to
'logical(1)'
```

<img src="/post/calendar_files/figure-html/unnamed-chunk-4-1.png" width="672" />



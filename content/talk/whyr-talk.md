+++
date = 2021-12-10T00:00:00  # Schedule page publish date.

title = "Why R? 2021: Keynote"
time_start = 2021-12-10T12:20:00
time_end = 2021-12-10T12:40:00
abstract = ""
abstract_short = ""
event = "Why R? 2021 conference"
event_url = "https://2021.whyr.pl/"
location = "Hosted from Poland"

# Is this a selected talk? (true/false)
selected = false

# Projects (optional).
#   Associate this talk with one or more of your projects.
#   Simply enter the filename (excluding '.md') of your project file in `content/project/`.
#projects = ["deep-learning"]

# Links (optional).
url_pdf = ""
url_slides = "https://thiyangt.github.io/whyR2021keynote/#1"
url_video = "https://www.youtube.com/watch?v=2aRupJEGxGo"
url_code = "https://github.com/thiyangt/whyR2021keynote"

# Does the content use math formatting?
math = true

# Does the content use source code highlighting?
highlight = true

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
[header]
image = "whyr/thiyanga.jpg"
caption = "Why R? 2021 conference"

+++

The Why R? Foundation held its [Why R? 2021 Conference - the fifth meeting of Central-Eastern-European](https://2021.whyr.pl/) in December 2021. I was honored to be asked by this esteemed group to provide a keynote address on Feature-based Time Series Forecasting and join with forecasting and prediction panel discussion.

<img src="whyr/panel.jpg" alt="" />

![](whyr/panel.jpg)

**Abstract**

Many applications require a large number of time series to be forecast. Providing better forecasts for these time series is important in decision and policy making. However, large scale time series data present numerous challenges in modelling and implementation due to the high dimensionality. It is unlikely that a single method will consistently provide better forecasts across all time series. On the other hand, selecting individual forecast models when the number of series is very large can be extremely challenging. In this talk, I will present a general framework for forecast model selection using meta-learning. We call this framework FFORMS (Feature-based FORecast Model Selection). The underlying approach involves computing a vector of features from the time series which are then used to select the forecasting model. The model selection process is carried out using a classification algorithm – we use the time series features as inputs, and the best forecasting algorithm as the output. Furthermore, we explore what is happening under the hood of the FFORMS framework and thereby gain an understanding of what features lead to the different choices of forecast models and how different features influence the predicted outcome. The proposed algorithm is implemented in the R package seer, which is available on CRAN at https://CRAN.R-project.org/package=seer.

Seer package: https://github.com/thiyangt/seer



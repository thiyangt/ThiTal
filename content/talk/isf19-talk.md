+++
date = 2019-06-11T00:00:00  # Schedule page publish date.

title = "Peeking inside FFORMS: Feature-based FORecast Model Selection"
time_start = 2019-06-18T14:20:00
time_end = 2019-06-18T14:40:00
abstract = ""
abstract_short = ""
event = "The 39th International Symposium on Forecasting, 2019, Thessaloniki, Greece"
event_url = "https://forecasters.org/events/symposium-on-forecasting/"
location = "Thessaloniki, Greece "

# Is this a selected talk? (true/false)
selected = false

# Projects (optional).
#   Associate this talk with one or more of your projects.
#   Simply enter the filename (excluding '.md') of your project file in `content/project/`.
#projects = ["deep-learning"]

# Links (optional).
url_pdf = ""
url_slides = "talks/isf2019.pdf"
url_video = ""
url_code = "https://github.com/thiyangt/isf2019"

# Does the content use math formatting?
math = true

# Does the content use source code highlighting?
highlight = true

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
[header]
image = ""
caption = "My caption :smile:"

+++

**Abstract**

## Peeking inside FFORMS: Feature-based FORecast Model Selection

Thiyanga S. Talagala$^1$, Rob J. Hyndman$^1$, George Athanasopoulos$^1$

$^1$Department of Econometrics and Business Statistics, Monash University, Australia

Features of time series are useful in identifying suitable forecast models. Talagala, Hyndman & Athanasopoulos (2018) proposed a classification framework, called FFORMS (Feature-based FORecast Model Selection), which selects forecast models based on features calculated from the time series. The FFORMS framework builds a mapping that relates the features of a time series to the “best” forecast model using the random forest algorithm. In this paper we explore what is happening under the hood of the FFORMS framework and thereby gain an understanding of what features lead to the different choices of forecast models and how different features influence the predicted outcome. This is accomplished using model-agnostic machine learning interpretability approaches. Partial-dependency plots are used to visualize both main and interaction effects of features. The results of this study provide a valuable insight into how different features and their interactions affect the choice of forecast model selection. This gives a more refined picture of the relationship between features and the choice of forecast model which is particularly valuable for ongoing research in the field of feature-based time series analysis.

*Keywords:*
forecasting, time series, machine learning interpretability, black-box models, LIME

## References

Talagala, TS, RJ Hyndman & G Athanasopoulos (2018). Meta-learning how to forecast time series. Working paper 6/18. Monash University, Department of Econometrics and Business Statistics

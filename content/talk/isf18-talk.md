+++
date = 2018-06-09T00:00:00  # Schedule page publish date.

title = "Meta-learning how to forecast time series"
time_start = 2018-06-19T14:20:00
time_end = 2018-06-19T14:40:00
abstract = ""
abstract_short = ""
event = "38th International Symposium on Forecasting, Boulder, Colorado, USA"
event_url = "https://forecasters.org/events/symposium-on-forecasting/"
location = "Boulder, Colorado, USA "

# Is this a selected talk? (true/false)
selected = false

# Projects (optional).
#   Associate this talk with one or more of your projects.
#   Simply enter the filename (excluding '.md') of your project file in `content/project/`.
#projects = ["deep-learning"]

# Links (optional).
url_pdf = ""
url_slides = "talks/isf2018.pdf"
url_video = ""
url_code = "https://github.com/thiyangt/ISF-2018"

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

A crucial task in time series forecasting is the identification of the most suitable forecasting method. We present a general framework for forecast model selection using meta-learning. A Random Forest is used to predict the best forecasting method using only time series features. The proposed framework has been evaluated using time series from the M1 and M3 competitions, and is shown to yield accurate forecasts comparable to several benchmarks and other commonly used automated approaches of time series forecasting. A key advantage of our algorithm is that the time-consuming part of building the random forest can be handled in advance of the forecasting task.
+++
date = 2017-01-01T00:00:00  # Schedule page publish date.

title = "seer: R package for feature-based forecast model selection"
time_start = 2018-07-13T11:30:00
time_end = 2018-07-13T11:50:00
abstract = ""
abstract_short = ""
event = "useR 2018, Brisbane, QLD, Australia"
event_url = "https://user2018.r-project.org/"
location = "Brisbane, QLD, Australia"

# Is this a selected talk? (true/false)
selected = false

# Projects (optional).
#   Associate this talk with one or more of your projects.
#   Simply enter the filename (excluding '.md') of your project file in `content/project/`.
#projects = ["deep-learning"]

# Links (optional).
url_pdf = ""
url_slides = "talks/user18.pdf"
url_video = "https://www.youtube.com/watch?v=_pKMIvdt5NU"
url_code = ""

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

The seer package provides a novel framework for forecast model selection using time series features. We call this framework FFORMS (Feature-based FORecast Model Selection). The underlying approach involves computing a vector of features from the time series which are then used to select the forecasting model. The model selection process is carried out using a classification algorithm -- we use the time series features as inputs, and the best forecasting algorithm as the output. The classification algorithm can be built in advance of the forecasting exercise (so it is an “offline” procedure). Then, when we have a new time series to forecast, we can quickly compute its features, use the pre-trained classification algorithm to identify the best forecasting model, and produce the required forecasts. Thus, the “online” part of our algorithm requires only feature computation, and the application of a single forecasting model, with no need to estimate large numbers of models within a class, or to carry out a computationally-intensive cross-validation procedure. This framework is compared against several benchmarks and other commonly used forecasting methods.


Link to git repository: [seer](https://github.com/thiyangt/seer)

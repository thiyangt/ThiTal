+++
date = 2019-07-05T00:00:00  # Schedule page publish date.

title = "Feature-based Time Series Forecasting"
time_start = 2019-07-11T11:48:00
time_end = 2019-07-11T12:02:00
abstract = ""
abstract_short = ""
event = "useR 2019, Toulouse, France"
event_url = "www.user2019.fr"
location = "Toulouse, France"

# Is this a selected talk? (true/false)
selected = false

# Projects (optional).
#   Associate this talk with one or more of your projects.
#   Simply enter the filename (excluding '.md') of your project file in `content/project/`.
#projects = ["deep-learning"]

# Links (optional).
url_pdf = "https://www.monash.edu/business/econometrics-and-business-statistics/research/publications/ebs/wp06-2018.pdf"
url_slides = "talks/useR2019.pdf"
#url_video = "https://www.youtube.com/watch?v=_pKMIvdt5NU"
url_code = "https://github.com/thiyangt/useR2019"

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

This work presents two feature-based forecasting algorithms for large-scale time series forecasting. The
algorithms involve computing a range of features of the time series which are then used to select the forecasting model. The forecasting model selection process is carried out using a pre-trained classifier. In our first algorithm we use a random forest algorithm to train the classifier. We call this framework FFORMS (Feature-based FORecast Model Selection). The second algorithm use efficient Bayesian multivariate surface regression approach to estimate forecast error for each method, and then using the minimum predicted error to select a forecasting model. Both algorithms have been evaluated using time series from the M4 competition, and is shown to yield accurate forecasts comparable to several benchmarks and other commonly used automated approaches in the time series forecasting literature. The methods are made available in the seer and fformpp packages in R.

keywords: Meta-learning, classification, surface regression


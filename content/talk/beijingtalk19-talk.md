+++
date = 2019-03-13T00:00:00  # Schedule page publish date.

title = "Feature-based Time Series Forecasting"
time_start = 2019-03-13T14:40:00
time_end = 2019-03-13T15:20:00
abstract = ""
abstract_short = ""
event = "Central University of Finance and Economics, Beijing, China"
event_url = ""
location = "Beijing, China "

# Is this a selected talk? (true/false)
selected = false

# Projects (optional).
#   Associate this talk with one or more of your projects.
#   Simply enter the filename (excluding '.md') of your project file in `content/project/`.
#projects = ["deep-learning"]

# Links (optional).
url_pdf = ""
url_slides = "talks/beijingtalk2019.pdf"
url_video = ""
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

This work presents three feature-based algorithms for large-scale time series forecasting.  The algorithms are developed based on meta-learning approach. In our first algorithm we use a random forest algorithm to identify the best forecasting model. We call this framework FFORMS (Feature-based FORecast Model Selection).  In the second algorithm, FFORMA (Feature-based FORecast Model Averaging), we use gradient boosting to obtain the weights for forecast combinations. The third algorithm use efficient Bayesian multivariate surface regression approach to estimate forecast error for each method, and then using the minimum predicted error to select a forecasting model or to choose individual models for forecast combinations. The proposed algorithms perform well compared to several benchmarks and other commonly used approaches in large-scale forecasting.


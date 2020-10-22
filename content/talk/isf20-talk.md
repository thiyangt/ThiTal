+++
date = 2020-10-27T00:00:00  # Schedule page publish date.

title = "A Tool to Detect Potential Data Leaks in Forecasting Competitions"
time_start = 2020-10-18T14:20:00
time_end = 2020-10-18T14:40:00
abstract = ""
abstract_short = ""
event = "The 40th International Symposium on Forecasting, 2020"
event_url = "https://forecasters.org/blog/2020/03/03/forecasting-2/"
location = " "

# Is this a selected talk? (true/false)
selected = false

# Projects (optional).
#   Associate this talk with one or more of your projects.
#   Simply enter the filename (excluding '.md') of your project file in `content/project/`.
#projects = ["deep-learning"]

# Links (optional).
url_pdf = ""
url_slides = "/static/talk/ISF_2020_Thiyanga_S_Talagala.html"
url_video = ""
url_code = "https://github.com/thiyangt/isf2020"

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

## A Tool to Detect Potential Data Leaks in Forecasting Competitions

Forecasting competitions are of increasing importance as a mean to learn best practices and gain knowledge. Data leakage is one of the most common issues that can often be found in competitions. Data leaks can happen when the training data contains information about the test data. There are a variety of different ways that data leaks can occur with time series data. For example: i) randomly chosen blocks of time series are concatenated to form a new time series, ii) scale-shifts, iii) repeating patterns in time series,  iv) white noise is added in the original time series to form a new time series, etc.  This work introduces a novel tool to detect these data leaks. The tsdataleaks package provides simple and computationally efficient algorithm to exploit data leaks in time series data. I will demonstrate the package design and its power to detect data leakages using recent forecasting competitions data.




**Key words:** Time series, R software, Tools, Visualization


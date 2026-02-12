+++
date = 2025-06-13T16:35:00  # Schedule page publish date.

title = "Dengue Forecasting Addressing the Interrupted Effect from COVID-19 Cases"
time_start = 2025-06-09T12:20:00
time_end = 2025-06-13T12:40:00
abstract = ""
abstract_short = ""
event = "R Medicine 2025"
event_url = "https://rconsortium.github.io/RMedicine_2025/"
location = "Virtual"

# Is this a selected talk? (true/false)
selected = false

# Projects (optional).
#   Associate this talk with one or more of your projects.
#   Simply enter the filename (excluding '.md') of your project file in `content/project/`.
#projects = ["deep-learning"]

# Links (optional).
url_pdf = ""
url_slides = "https://thiyangt.github.io/RMedicine2025/#/title-slide"
url_video = ""
url_code = "https://github.com/thiyangt/RMedicine2025"

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

## Abstract

Dengue is one of the deadliest vector-borne diseases in the world. Accurate time series forecasting of dengue cases is essential for preparedness—such as effective resource allocation for smoking to destroy breeding sites, distribution of medical supplies, and the development of early warning systems. In this study, we used weekly, district-wise dengue cases from 2007 to 2025 in Sri Lanka. Due to similar symptoms between dengue and COVID-19, case reporting from 2020 to 2022 may be unreliable, introducing an interrupted effect into the time series. This study investigates three modeling strategies to address this interruption. They are (i) excluding the interrupted period from model training, (ii) forecasting the interrupted period first and then using it for modeling, and (iii) down-weighting observations in the interrupted period. Data from 2007 to 2024 were used for model fitting, and data for 2025 were used for model testing. We evaluated the performance of these methods across 25 districts in Sri Lanka. There is no single method outperformed across all districts. The study further explores why certain approaches perform better in some districts than others, providing insights into tailoring forecasting methods to specific regional characteristics.
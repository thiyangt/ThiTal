---
date: "2020-07-25T00:00:00Z"
external_link: 
image:
  caption: 
  focal_point: Smart
summary: MEDIPI, a statistical machine learning algorithm for medicinal plant identification and a leaf image database for plant classification.
tags:
- R
- Python
- OpenCV
- Data Mining
- Pattern Recognition
- Machine Learning
title: Statistical Machine Learning for  Medicinal Plant Identification
---

# Benchmark dataset for plant leaves classification



Researchers usually struggle and spend a lot of time
establishing a database by gathering many leaf samples as raw data. By sharing our database we
provide a training/test database to other researchers to develop new algorithms or to evaluate their algorithms. Furthermore,  data
sharing encourages more connections and collaboration between scientists, which leads to better decision-making.

## R Software Package `MedLEA`: **Med**icinal **LEA**f




The [MedLEA](https://github.com/SMART-Research/MedLEA) package provides two datasets.

i) A dataset of morphological and structural features of 471 medicinal plant leaves. The features of each species are recorded by manually viewing the medicinal plant repository available at (<http://www.instituteofayurveda.org/plants/>). For more information visit at <https://github.com/SMART-Research/MedLEA>.

![](leaf.png)

Figure 1:  Some morphological characteristics of profiles

ii) Leaf image data set:  A database of leaf images of medicinal plants in Sri Lanka is
not yet available. Hence, through this research, we establish a repository of medicinal
plant images. This repository contains 1099 leaf images of 31 species. There are 29-45 images per species. 

![](imgleaf.png)

Figure 2: Few samples from the MedLEA images

You can get access to the data set via the MedLEA package. 

```{r, eval=FLASE}
install.packages("MedLEA")
```

# Algorithm for leaves classification

## MEDIPI (**MEDI**icinal **P**lant **I**dentification) algorithm 

Medicinal plants are usually identified by practitioners based on years of experience through
sensory or olfactory senses. The other method of recognizing these plants involves Laboratory-
based testing, which requires trained skills, data interpretation which is costly and time-intensive. Automatic ways to identify medicinal plants are useful especially for those that are lacking experience in herbal recognition. We introduce a computationally efficient new algorithm for medicinal plant classification.  We
refer to our medicinal plant classification algorithm as MEDIPI : MEDIicinal Plant
Identification. MEDIPI
contains two main phases (i) The offline phase, and (ii) The online phase. The algorithm operates on a set of interpretable features computed from the images.  Figure 3 provides an overview of our algorithm.

![](medipi.png)

Figure 3: Overview of MEDIPI algorithm



This work is a part of [Jayani P G Lakshika](https://www.linkedin.com/in/jayani-lakshika-9a0297162/) BSc (Hons) Degree in Statistics thesis - 2021.



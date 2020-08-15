day <- readRDS("~/Lecturer/1_TEACHING/2020_s1/Rprogramming/static/slides/day.rds")

day_bike_train <- day[1:585,]
day_bike_test <- day[586:731,]
saveRDS(day_bike_train, file ="~/Lecturer/1_TEACHING/2020_s1/Rprogramming/static/slides/day_train.rds" )
saveRDS(day_test, file ="~/Lecturer/1_TEACHING/2020_s1/Rprogramming/static/slides/day_test.rds" )


# --- break correlation
set.seed(101) # Set Seed so that same sample can be reproduced in future also
# Now Selecting 75% of data as sample from total 'n' rows of the data  
sample <- sample.int(n = nrow(day), size = floor(.80*nrow(day)), replace = F)
day_train <- day[sample, ]
day_test  <- day[-sample, ]
saveRDS(day_train, file ="~/Lecturer/1_TEACHING/2020_s1/Rprogramming/static/slides/day_train.rds" )
saveRDS(day_test, file ="~/Lecturer/1_TEACHING/2020_s1/Rprogramming/static/slides/day_test.rds" )

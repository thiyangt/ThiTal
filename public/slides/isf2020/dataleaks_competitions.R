#packages
library(tsdataleaks)
library(tidyverse)
library(magrittr)
library(Mcomp)
library(viridis)
library(M4comp2018)

# M1 comp - Yearly
data("M1")
M1Y <- subset(M1, "yearly")
M1Y_x <- lapply(M1Y, function(temp){temp$x})
m1y_f1 <- find_dataleaks(M1Y_x, h=6, cutoff = 1)
save(m1y_f1, file="outputs/m1y_f1.rda")
viz_dataleaks(m1y_f1)
m1y_r1 <- reason_dataleaks(M1Y_x, m1y_f1, h=6)
m1y_r1
save(m1y_r1, file="outputs/m1y_r1.rda")


# M1comp - Quarterly
M1Q <- subset(M1, "Quarterly")
M1Q_x <- lapply(M1Q, function(temp){temp$x})
m1q_f1 <- find_dataleaks(M1Q_x, h=8, cutoff = 1)
save(m1q_f1, file="outputs/m1q_f1.rda")
viz_dataleaks(m1q_f1)
m1q_r1 <- reason_dataleaks(M1Q_x, m1q_f1, h=8)
m1q_r1
save(m1q_r1, file="outputs/m1q_r1.rda")


# M1comp - Monthly
M1M <- subset(M1, "Monthly")
M1M_x <- lapply(M1M, function(temp){temp$x})
m1m_f1 <- find_dataleaks(M1M_x, h=18, cutoff = 1)
save(m1m_f1, file="outputs/m1m_f1.rda")
viz_dataleaks(m1m_f1)
m1m_r1 <- reason_dataleaks(M1M_x, m1m_f1, h=18)
m1m_r1
save(m1m_r1, file="outputs/m1m_r1.rda")


# M3comp - Yearly
data("M3")
M3Y <- subset(M3, "yearly")
M3Y_x <- lapply(M3Y, function(temp){temp$x})
m3y_f1 <- find_dataleaks(M3Y_x, h=6, cutoff = 1)
save(m3y_f1, file="outputs/m3y_f1.rda")
viz_dataleaks(m3y_f1)
m3y_r1 <- reason_dataleaks(M3Y_x, m3y_f1, h=6)
m3y_r1
save(m3y_r1, file="outputs/m3y_r1.rda")


# M3comp - Quarterly
M3Q <- subset(M3, "Quarterly")
M3Q_x <- lapply(M3Q, function(temp){temp$x})
m3q_f1 <- find_dataleaks(M3Q_x, h=8, cutoff = 1)
save(m3q_f1, file="outputs/m3q_f1.rda")
viz_dataleaks(m3q_f1)
m3q_r1 <- reason_dataleaks(M3Q_x, m3q_f1, h=8)
m3q_r1
save(m3q_r1, file="outputs/m3q_r1.rda")


# M3comp - Monthly
M3M <- subset(M3, "Monthly")
M3M_x <- lapply(M3M, function(temp){temp$x})
M3M_f1 <- find_dataleaks(M3M_x, h=18, cutoff = 1)
save(m3m_f1, file="outputs/m3m_f1.rda")
viz_dataleaks(m3m_f1)
m3m_r1 <- reason_dataleaks(M3M_x, m3m_f1, h=8)
m3m_r1
save(m3m_r1, file="outputs/m3m_r1.rda")

# M4comp - Yearly


# M4comp - Quarterly


# M4comp - Monthly


# M4comp - weekly

# M4comp - daily
data(M4)
M4D <- Filter(function(l) l$period == "Daily", M4)
M4D_x <- lapply(M4D, function(temp){temp$x})[100:110]
m4d_f1 <- find_dataleaks(M4D_x, h=14, cutoff = 1)
save(m4d_f1, file="outputs/m4d_f1.rda")
viz_dataleaks(m4d_f1)
m4d_r1 <- reason_dataleaks(M4D_x, m4d_f1, h=14)
m4d_r1
save(m4d_r1, file="outputs/m4d_r1.rda")


# M4comp - hourly

# M5

# Tcomp
library(Tcomp)

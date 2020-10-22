library(M4comp2018)
library(tsdataleaks)
library(tidyverse)
data(M4)
M4D <- Filter(function(l) l$period == "Daily", M4)

for(i in 1: 20){
  
  plot(M4D[[i]]$x, main=i)
}

a =  as.vector(lapply(M4D, function(temp){temp$x})[17][[1]])[900:1006]#101
b =  as.vector(lapply(M4D, function(temp){temp$x})[18][[1]])[1:900]#101

lst <- list(
a=a, b=b
)

find_dataleaks(lst, h=14)

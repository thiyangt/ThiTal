par(mar=c(0,0,0,0))
plot(0,0,xlim=c(0,28),ylim=c(0,1),
     xaxt="n",yaxt="n",bty="n",xlab="",ylab="",type="n")
i <- 1

test <- 6
train <- 1:22
arrows(0,1-j/20,27,1-j/20,0.05)
points(train,rep(1-j/20,length(train)),pch=19,col="blue")
if(length(test) >= 6){
  points(22, 28, pch=19, col="red")
} else {
  points(1, 22, pch=19, col="gray")
}






for(j in 1:20)
{
  test <- (6+j):26
  train <- 1:(5+j)
  arrows(0,1-j/20,27,1-j/20,0.05)
  points(1, 22,pch=19,col="blue")
  if(length(test) >= i)
    points(22, 28, pch=19, col="red")
  else
    points(1, 22, pch=19, col="gray")
}
text(28,.95,"time")

#install.packages("mvtnorm")
library(mvtnorm)
install.packages("rgl")
library(rgl)
mvtrain <- function(hwdata)
{
  hv=vector(mode="numeric",length=0)
  wv=vector(mode="numeric",length=0)
  pv=vector(mode="numeric",length=0)
  
  hmin=min(hwdata[,1])-15
  hmax=max(hwdata[,1])+15
  wmin=min(hwdata[,2])-15
  wmax=max(hwdata[,2])+15
  m=colMeans(hwdata)
  cv=cov(hwdata)
  cat("Mean Vector: ",m,"\n")
  cat("Covariance Matrix: ",cv)
  hv=rep(hmin:hmax,each=length(hmin:hmax))
  wv=rep(wmin:wmax,times=length(hmin:hmax))
  grid_points=cbind(hv,wv)
  pv=dmvnorm(grid_points,m,cv)
  plot3d(x=hv,y=wv,z=pv,xlab="height",ylab="weight",main="Multivariate normal Distribution",col="blue")
  return(list(mv=m,cv=cv))
}
mvtest <- function(mvdata,hwdata)
{
  mv=mvdata$mv
  cv=mvdata$cv
  pt=dmvnorm(hwdata,mv,cv)
  if(pt>=0.00005)
    cat("the given height and weight of the person is adult")
  else
    cat("the give height and weight of the person is not adult")
}
hwdata <- cbind(
  c(165, 170, 160, 154, 175, 155, 167, 177, 158, 178),  # Heights
  c(78, 71, 60, 53, 72, 51, 64, 65, 55, 69)             # Weights
)
mvdata = mvtrain(hwdata)
ht= as.numeric(readline(prompt ='Enter the Height of person ='))
wt= as.numeric(readline(prompt ='Enter the Weight of person ='))
hwdata = c(ht,wt) 
mvtest(mvdata,hwdata)

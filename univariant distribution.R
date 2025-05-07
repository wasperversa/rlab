uvtrain <- function(hdata)
{
    xv=vector(mode="numeric",length=0)
    pv=vector(mode="numeric",length=0)
    hmin=min(hdata)-15
    hmax=max(hdata)+15
    m=mean(hdata)
    v=var(hdata)
    cat("Mean: ",m,"\n")
    cat("Variance: ",v)
    for(x in hmin:hmax)
    {
        p=dnorm(x,m,sqrt(v))
        xv=c(xv,x)
        pv=c(pv,p)

    }
    plot(xv,pv,xlab="height of the person",ylab="p(X)",main="Univariate normal Distribution",col="blue")
    return(c(m,v))
}
uvtest <- function(m,v,ht)
{
  pt=dnorm(ht,m,sqrt(v))
  if (pt >= 0.00005)
  cat("the given height of the person is adult")
  else
  cat("the give height of the person is not adult")

}
hdata <- c(165, 170, 160, 154, 175, 155, 167, 177, 158, 178)
mv = uvtrain(hdata)
ht=as.numeric(readline(prompt="Enter the height of the person:"))
uvtest(mv[1],mv[2],ht)
#############################################################################
# QQ plot for normality standardized to the SD
# Has the advantage that the y-axis is expressed as deviation from the 
# mean in SD
#############################################################################

data(mtcars)
qsec <- mtcars$qsec


qqnorm((qsec-mean(qsec))/sd(qsec),pch=19,col="gold2")
abline(a=0,b=1,lty=2,col="indianred",lwd=2)
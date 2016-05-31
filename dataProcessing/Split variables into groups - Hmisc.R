############################################
# Split variable into groups using Hmisc
############################################

library(Hmisc)

set.seed(1)
x <- runif(1000, 0, 100)
z <- cut2(x, c(10,20,30))
table(z)
table(cut2(x, g=10)) # quantile groups
table(cut2(x, m=50)) # group x into intevals with at least 50 obs.
#################################
# Split variable into quantiles
#################################


q <- quantile(d$Rank,prob=c(0,.2,.4,.6,.8,1))
d$quint <- cut(d$Rank, q)
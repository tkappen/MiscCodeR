library(Hmisc)
library(rms)

# Lineaire regressie 
n <- 1000
x <- rnorm(n, 22, 4.5) # BMI, mean 22, SD 4.5, n = 1000
a <- 4 # Start cholesterol
b <- 0.05 # regressiecoef BMI -> cholesterol (bij BMI 40 is cholesterol 6)
e <- rnorm(n, 0, 0.5) # random meetfout 
y <- a + b * x + e

f <- glm(y~x)
f



# Logistische regressie 
n <- 10000
x <- rbinom(n, 1, 0.4) # Vrouw = 1
a <- 0.4
b <- -0.2
y <- rep(0, n) # Hartinfract 
n.fem <- sum(x)
y[x==0] <- rbinom(n-n.fem, 1, a)
y[x==1] <- rbinom(n.fem, 1, a + b)


f <- glm(y~x, family = "binomial")
f

# y <- a + b*x # lineaire regressie. Hierbij komen a en b volledig overeen.
# log(odds / 1-odds) <- a + b*x   # logistische regressie in log odds uitgedrukt
# y <- a + b*x  # kans op y, echter a en b komen niet overeen
a.f <- coef(f)[1]
b.f <- coef(f)[2]


# y <- 1 / (1 + exp(-1*(a.f + b.f*x)))


a
plogis(a.f) # Deze twee moeten ongeveer gelijk zijn

b
plogis(b.f) # Deze twee moeten ongeveer gelijk zijn
exp(b.f) # Dit is de odds ratio

varNames <- colnames(model.matrix(f))
equationStr <- paste(round(coef(f),2),varNames,sep="*",collapse=" + ")
equationStr <- gsub("*(Intercept)","",equationStr,fixed=TRUE)
equationStr <- paste(f$terms[[2]],"<- 1 / (1 + exp(-1*(",equationStr, ")))")
cat(equationStr)
# y.pred <- 1 / (1 + exp(-1*( -0.44 + -0.89*x )))






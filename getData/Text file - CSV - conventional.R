##############################################
# Read CSV file using conventional code
##############################################


# Specify column classes
d.1 <- read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", skip=4, nrows=190,
	colClasses=c("factor","numeric","NULL","character","character","NULL","NULL","NULL","NULL","NULL"))
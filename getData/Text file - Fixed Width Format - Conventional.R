#############################################################
# Read data from Fixed Width Format Text files (fwf, for)
# using conventional R code (no additional packages)
#############################################################


# Get Tutorial Data
dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
download.file(dataset_url, "./data/data.for")

files_full <- list.files("./data", full.names=T)

# Fixed width file - Widths
w <- c(15,4,9,4,9,4,9,4,4)
sum(w) == nchar(readLines(files_full[1])[5]) # Check whether lengths are the same

# First orientation what happens when reading 
head(read.fwf(files_full[1],w))


# Trim trailing and leading spaces
trim <- function (x) gsub("^\\s+|\\s+$", "", x)
cnames <- trim(read.fwf(files_full[1],w, skip=3, n=1, as.is=TRUE)) # Skip first three lines

# Read dataset
d <- read.fwf(files_full[1],w, col.names = cnames, skip=4) # Skip first four lines because column names are defined
sum(d[,4])


########################
# Read and filter JPG
########################

library(jpeg)

dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
# Without mode="wb" (binary) the JPEG is corrupt
download.file(dataset_url, "./data/gettdata_jeff.jpg",  mode="wb")
j <- readJPEG("./data/gettdata_jeff.jpg", native=TRUE)
quantile(j, probs=c(0.3,0.8))

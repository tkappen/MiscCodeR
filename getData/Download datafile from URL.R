############################
# Get project data from URL
############################

# Get zipfile and unzip
dataset_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
download.file(dataset_url, "./data/exdata_data.zip")
unzip("./data/exdata_data.zip", exdir="./data")

# Sometimes a different API method is necessary specifically within Windows
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl, destfile = "./data/housingidaho.csv", method = "wininet")



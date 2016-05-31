#############################
# Read and parse and XML file
#############################

library(XML)

fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc <- xmlTreeParse(fileUrl,useInternal=TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)
table(xpathSApply(rootNode,"//zipcode",xmlValue)==21231)
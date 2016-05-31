#######################################################################################
# Just read the lines of a webpage (no parsing through library(XML) or library(httr)
#######################################################################################

con = url("http://.../.../contact.html")
htmlCode = readLines(con)
close(con)
i <- c(10,20,30,100)
nchar(htmlCode[i])

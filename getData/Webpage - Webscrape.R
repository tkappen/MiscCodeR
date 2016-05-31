########################
# Webscrape a webpage
########################

library("httr")
library("XML")

# Define certicificate file
cafile <- system.file("CurlSSL", "cacert.pem", package = "RCurl")

# Read page
page <- GET(
  "https://ned.nih.gov/", 
  path="search/ViewDetails.aspx", 
  query="NIHID=0010121048",
  config(cainfo = cafile)
  # ssl.verifypeer = FALSE #sometimes SSL verification needs to be turned off to get more info	
)


#########################
# Parse info using regexp
x <- text_content(page)
tab <- sub('.*(<table class="grid".*?>.*</table>).*', '\\1', x)

# Parse the table
readHTMLTable(tab)


#######################
# Parse using htmlParse
h = htmlParse(page)
ns <- getNodeSet(h, "//table[@id = 'ctl00_ContentPlaceHolder_dvPerson']")
ns
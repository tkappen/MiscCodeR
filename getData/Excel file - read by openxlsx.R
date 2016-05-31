########################
# Open an Excel file
########################


# The package 'xlsx' requires Java, so 'openxlsx' is easier
library(openxlsx)

xlsxFile <- system.file("./data/naturalgas.xlsx", package = "openxlsx")
dat <- read.xlsx(xlsxFile = "./data/naturalgas.xlsx", rows=c(18:23), cols=c(7:15), colNames=T, sheet = 1, skipEmptyRows = FALSE)

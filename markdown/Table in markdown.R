#####################################
# Write a simple table in markdown
#####################################

library(xtable)
library(knitr)

## Create markdown table
CodeBook <- as.data.frame(names(d.long))
names(CodeBook)[1] <- "VariableName"
CodeBook$Label <- c("Human Subject Identifier",
	"Type of Activity",
	"Dataset Origin (Train or Test",
	"Type of measurement: either its mean or st. deviation",
	"The mean value for the mean/std of a measurement per Subject and Activity")

write(kable(CodeBook,format="markdown", caption="CodeBook"), "VariableCodeBook.md")

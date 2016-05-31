#######################################################
# Knit an R markdown script to html
# uses R markdown V1 (for V2, preferrably use RStudio
#######################################################

library(knitr)
library(markdown)

knit2html("rscript.Rmd")
browseURL("rscript.html")

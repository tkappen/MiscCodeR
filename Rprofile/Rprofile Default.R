##################################
# Default .Rprofile file
##################################

# AnStat ID and PW
Sys.setenv(as_id = <UID>)
Sys.setenv(as_pw = <PW>)
# Call with Sys.getenv("as_id") etc.

.First <- function(){
  library(Hmisc)
  library(rms)
  library(ggplot2)
  library(dplyr)
  library(tidyr)
}
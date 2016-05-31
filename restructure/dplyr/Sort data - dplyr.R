##########################
# Sort data through dplyr
##########################

library(dplyr)

# Data frame row names are silently dropped. 
# To preserve, convert to an explicit variable.
arrange(mtcars, cyl, disp)
arrange(mtcars, desc(disp))
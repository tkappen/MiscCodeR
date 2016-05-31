###############################################
# Process long data to wide format using dplyr
###############################################

library(dplyr)

d.wide <- d %>% group_by(subjectID, activity, Dataset) %>% summarize_each(funs(mean))
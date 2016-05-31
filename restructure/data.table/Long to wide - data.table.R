####################################
# Process long data to wide format
####################################

library(data.table)

dcast(dt, family_id + age_mother ~ child, value.var = "dob")
###################################
# Aggregate data for data.table
###################################

library(data.table)

# Get the sum of a particular value for each id starting with a long format
dcast(dt.m1, family_id ~ ., fun.agg = function(x) sum(!is.na(x)), value.var = "dob")
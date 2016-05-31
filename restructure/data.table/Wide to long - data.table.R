###################################
# Process wide data to long format
###################################

library(data.table)

dt.m1 = melt(dt, id.vars = c("family_id", "age_mother"), 
                measure.vars = c("dob_child1", "dob_child2", "dob_child3"))

# Name the variable and value columns to child and dob respectively
dt.m1 = melt(dt, measure.vars = c("dob_child1", "dob_child2", "dob_child3"), 
               variable.name = "child", value.name = "dob")
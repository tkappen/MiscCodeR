####################################
# Process long data to wide format using tidyr
####################################

library(tidyr)
#>   subject sex control cond1 cond2
#> 1       1   M     7.9  12.3  10.7
#> 2       2   F     6.3  10.6  11.1
#> 3       3   F     9.5  13.1  13.8
#> 4       4   M    11.5  13.4  12.9

library(tidyr)

# The arguments to gather():
# - data: Data object
# - key: Name of new key column (made from names of data columns)
# - value: Name of new value column
# - ...: Names of source columns that contain values
data_long <- gather(olddata_wide, condition, measurement, control:cond2)


# Use specific column names
gather(olddata_wide, condition, measurement, control, cond1, cond2)


# If you need to use gather() programmatically, you may need to use variables containing column names. 
# To do this, you should use the gather_() function instead, which takes strings instead of bare (unquoted) column names.
keycol <- "condition"
valuecol <- "measurement"
gathercols <- c("control", "cond1", "cond2")

gather_(olddata_wide, keycol, valuecol, gathercols)
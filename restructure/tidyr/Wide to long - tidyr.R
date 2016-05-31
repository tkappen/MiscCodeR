####################################
# Process wide data to long format using tidyr
####################################

library(tidyr)

#>    subject sex condition measurement
#> 1        1   M   control         7.9
#> 2        1   M     cond1        12.3
#> 3        1   M     cond2        10.7
#> 4        2   F   control         6.3
#> 5        2   F     cond1        10.6
#> 6        2   F     cond2        11.1
#> 7        3   F   control         9.5
#> 8        3   F     cond1        13.1
#> 9        3   F     cond2        13.8
#> 10       4   M   control        11.5
#> 11       4   M     cond1        13.4
#> 12       4   M     cond2        12.9


# The arguments to spread():
# - data: Data object
# - key: Name of column containing the new column names
# - value: Name of column containing values
data_wide <- spread(olddata_long, condition, measurement)
data_wide
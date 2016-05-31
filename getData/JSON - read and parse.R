###########################
# Read and parse JSON file
###########################

library(jsonlite)

# Convert into data.frame
d <- jsonlite::fromJSON(toJSON(r))
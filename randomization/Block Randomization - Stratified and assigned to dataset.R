#############################################################################
# Randomize cohort per stratum as blocks and assign the value to the dataset
#############################################################################

library(blockrand)
library(dplyr)
library(tidyr)

# Creat function that has a set of records as input and 
# returns the appropriate length of randomization
# This is a set of records for a single stratum
block.assign <- function(x, ...) {
	if(length(dim(x))!=2) stop('not the right number of dimensions')
	n <- dim(x)[1]
	block <- blockrand(n, ...)
	return(block[1:n,])
}

# Apply function to each stratum and then unnest
set.seed(3)
dx <- d %>%
  group_by(staffrole,specialty) %>%
  select(vunetid,EmailAddress) %>%
  do(vunetid = .$vunetid, EmailAddress = .$EmailAddress, treatment = block.assign(., levels=c('email','aims'),
	block.sizes = 2)) %>%
  unnest()

# Check randomization
table(dx$treatment, dx$staffrole, dx$specialty)


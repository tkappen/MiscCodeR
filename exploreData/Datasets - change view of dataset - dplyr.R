#############################################
# Different view of a dataframe using dplyr
#############################################

library(dplyr)


# The main advantage to using a tbl_df over a regular data frame is the printing:
# tbl objects only print a few rows and all the columns that fit on one screen, 
# describing the rest of it as text.
cran <- tbl_df(mydf)
rm("mydf")

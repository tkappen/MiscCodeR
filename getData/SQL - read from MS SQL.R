############################
# Get data from MS SQL
############################

library(RODBC)


# Use SQL directly
# Requires DSN with servername with connection to Research DB
# And assumes that we use trusted windows connection
vr <- odbcConnect("servername")
d <- sqlQuery(vr, "select * from Research.tk.IOHCDSS_randomization_R")
odbcClose(vr)
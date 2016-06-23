############################
# Write data to MS SQL
############################

library(RODBC)


# Use SQL directly
# Requires DSN with servername with connection to Research DB
# And assumes that we use trusted windows connection
vr <- odbcConnect("servername")

# Does not seem to work without a database select in the connection (thus e.g. Research selected)
sqlSave(vr, dx, tablename = 'tk.IOHCDSS_randomized_20160623', rownames = F)
odbcClose(vr)
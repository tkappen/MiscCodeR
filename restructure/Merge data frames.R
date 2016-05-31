################################################
# Merge data frames using conventional methods
################################################

# Merge dataset by specific id and use only first set as source for cases (left join)
d <- merge(d.1,d.2, by="CountryCode", all.x=TRUE, all.y=FALSE)
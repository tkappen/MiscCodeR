######################################
# Calculate intervals with Lubridate
######################################

library(lubridate)

# Calculate interval between '2012-06-09 14.49' and now
t1 <- ymd_hms("2012-06-09 14:49:00", tz = "CET")
# Or
# t1 <- ymd_hms("2012-06-09 14:49:00")
# tz(t1) <- "Europe/Amsterdam"
# see also OlsonNames()

t2 <- now()
d.t <- interval(t1, t2)

as.period(d.t)
as.period(d.t, unit = "days")
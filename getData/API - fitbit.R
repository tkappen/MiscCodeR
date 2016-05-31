########################
# Access FitBit API
########################

library(devtools)
install_github("hadley/httr")
library(httr)


# 1. Create endpoint for FitBit
fitbit_endpoint <- oauth_endpoint(
  request = "https://api.fitbit.com/oauth2/token",
  authorize = "https://www.fitbit.com/oauth2/authorize",
  access = "https://api.fitbit.com/oauth2/token")
predictfit <- oauth_app(
  appname = "predictfit",
  key = "227K3N", 
  secret = "a34fa82a3f5f614cdd58756fada0b20f")

# 2. Get OAuth token
scope <- c("heartrate","activity","location")  	# See dev.fitbit.com/docs/oauth2/#scope
fitbit_token <- oauth2.0_token(fitbit_endpoint, predictfit,
  scope = scope, use_basic_auth = TRUE,  cache=F)

# 3. Make API requests
resp <- GET(url = "https://api.fitbit.com/1/user/2ZSP95/activities/heart/date/today/1w.json", 
  config(token = fitbit_token)) # see https://dev.fitbit.com/docs/heart-rate/


# 3. Make API request: 1 day data, gives minute or even seconds data
resp_min <- GET(url = "https://api.fitbit.com/1/user/2ZSP95/activities/heart/date/2016-01-10/1d/1min.json", 
  config(token = fitbit_token)) # see https://dev.fitbit.com/docs/heart-rate/



stop_for_status(resp)
content(resp)
content(resp_min)

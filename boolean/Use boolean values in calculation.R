############################################
# Use boolean values in a calculation
############################################

# when using a boolean, simply appplying that in a calculation renders
d$death==1*d$ageattx
#  [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE

# Converting it to numeric may be a solution
as.numeric(d$death==1)*d$ageattx
#  [1] 61 60 23 51  0  0 26 

# But the AsIs function (I ()) also solves this.
I(d$death==1)*d$age
#  [1] 61 60 23 51  0  0 26 

# This can also be used in regression formulas
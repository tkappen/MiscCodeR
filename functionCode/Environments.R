# Use an anonymous function to create so-called closures: a function that already has some data
# See an example here

power <- function(exponent) {
  function(x) {
    x ^ exponent
  }
}

square <- power(2)
cube <- power(3)

# Now square(x) will provide x^2 and cube(x) x^3

# See what the closures look like
square
cube

# We do not recognize their actual formula since it doesn't tell us what 'exponent' is
# If we print:
environment(square)
environment(cube)

# We only see the enclosing environment
# However, 
as.list(environment(square))
as.list(environment(cube))

# Gives us the contents of the environment


# In R, almost every function is a closure. All functions remember the environment in which they were created, 
# typically either the global environment, if it’s a function that you’ve written, or a package environment,
# if it’s a function that someone else has written. 
# The only exception is primitive functions, which call C code directly and don’t have an associated environment.
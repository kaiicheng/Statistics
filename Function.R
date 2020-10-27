# Function
# Build a function to get square of x.
ftn1 <- function(x){
  a = x^5
  return(a)
}
ftn1(3)
ftn1(1:4)

# Build a function to sum up x and y.
ftn2 <- function(x, y){
  b = x+y
  return(b)
}
ftn2(3,5)
# ftn2(2) 
# Missing y.

# Build a function to multiple x by y.
# y default to 8.
ftn3 <- function(x, y=8){
  t = x * y
  return(t)
}
ftn3(3)
ftn3(6,7)

# Build a function to return more than 1 element.
ftn4 <- function(x, y){
  a = x + y
  b = x - y
  return(c(a,b))
}
ftn4(8,2)
# If-else.
# Determine x.
x = 3
if(x>0){
  print("good")
}else if(x<0){
  print("bad")
}else{
  print("I DON'T KNOW")
}

# Determine x.
ftn5 <- function(x){
  if(x>0){
    return("positive")
  }else if(x<0){
    return("negative")
  }else{
    return("zero")
  }
}
ftn5(-10)
ftn5(0)

# Calculate x*y if x>0 & y>0,
# and otherwise calculate x+y.
ftn6 <- function(x,y){
  if (x>0 & y>0){
    return(x*y)
  }else{
    return(x+y)
  }
}
ftn6(6,3)
ftn6(-1,-3)

# Determine the scores is pass or fail. 
score<-80
ifelse(score>=60,"Pass!","Fail!")

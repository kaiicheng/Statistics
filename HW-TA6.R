# Build a function to simulate a die rolling game.
# x is the result of rolling a dice for one time,
# y is the amount of money we has before the game.
game <- function(x, y){
  if(x >= 5){
  return(50*x + y) 
  }else if(x < 5){
  return(y-50*x)
  }
}

game(5,100)
# The amount of money after the game is 350.

2*(1-0.8665)

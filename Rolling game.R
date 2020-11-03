# Build a function to simulate a die rolling game.
# x is the result of rolling a dice for one time,
# y is the amount of money we has before the game.
game = function(money,number=sample(1:6,1)){
  if (number >= 5){
    return(money+50*number)
  }
  else{
    return(money-50*number)
  }
}

###play the game once###
current_money = 1000
game(current_money)

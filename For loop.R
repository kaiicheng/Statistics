###function of the game###
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


###example1
for(i in 1:5){
  print("hello!")
}

a = c("A","B","C")
for(i in a){
  print(i)
}

###example2
x <- 1
for(i in 1:10){
  x = x * i
  print(x)
}


###play the game 20 rounds###
current_money = 400
for(i in 1:20){
  num = sample(1:6,1,replace = T) 
  current_money = game(current_money,num)
  print(c(i, num, current_money))
}


###example3
for(i in c(1:5)){
  if(i == 3){
    break
  }
  print(i)
}


###use break to finish the loop
current_money = 400
for(i in 1:20){
  num = sample(1:6,1) 
  current_money = game(current_money,num)
  print(c(i, num, current_money))
  if (current_money <= 0){
    break
  }
}
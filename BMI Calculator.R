# Build a function to calculate BMI value.
# Inputs are x(height(cm)) and y(weight(kg)).
# BMI = weight(kg)/(height(m))^2.
bmi_calculator <- function(x, y){
  height = x/100
  weight = y
  bmi = weight/height^2
  return(bmi)
}
bmi_calculator(183,75)
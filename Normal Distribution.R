# 1.
# µ = 60 kg, σ = 5 kg
# P(X≤65)=P(Z≤1) 
pnorm(65,60,5)
# Z value
# Mean default to 0, sd defaults to 1.
pnorm(1)

# 2.
# P(55 ≤ X ≤ 62) = P(−1 ≤ 𝑍 ≤ 0.4)
pnorm(62,60,5) - pnorm(55,60,5)
# Z value
pnorm(0.4) - pnorm(-1)

# 3.
# average grade = 75, standard deviation = 10
# X~N(75,10)
x <- seq(35,115,by=0.1)  # Create a sequence.
x

# plot(x, y, main =, xlab =, ylab =, …..)
plot(x,dnorm(x,75,10))  # Point. 
plot(x,dnorm(x,75,10),type ="l")  # Line. 

# 4.
# Last 5%
qnorm(0.05,75,10)

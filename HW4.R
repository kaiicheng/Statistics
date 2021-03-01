# Binomial distribution
# 1.
# (a)
dbinom(10,20,0.7)

# (b)
pbinom(15,20,0.7)

# (c)
sum(dbinom(10:15,20,0.7))

# 2. 
# (a)
0*16+1*29+2*21+3*14+4*12+5*4+6*4
(0*16+1*29+2*21+3*14+4*12+5*4+6*4)/100

# (b) 
dpois(0, 2.05)
dpois(1, 2.05)
dpois(2, 2.05)
dpois(3, 2.05)
sum(dpois(0:3, 2.05))
1-0.8479902

# (c)
distribution <- rpois(500,2.05)
distribution
table(distribution)

59/500

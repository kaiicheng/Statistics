# Binomial distribution

# Choose b from a
# choose(a, b) 

# 1.
# X~ Bin(10,0.3)
# P(X=5) = 0.1029
# P(X?‰¤3) = 0.6496

dbinom(5, 10, 0.3)
pbinom(3, 10, 0.3)


# 2.
# P(successful) = 0.9, patients = 20
# P(X?‰¤15) 
pbinom(15, 20, 0.9)

# P(X?‰¥16) = P(X>15) = 1 ??? P(X?‰¤15) = 1 ??? 0.0432=0.9568 
1-pbinom(15,20,0.9)

# P(X=16) + P(X=17) + P(X=18) + P(X=19) + P(X=20)
dbinom(16,20,0.9)+dbinom(17,20,0.9)+dbinom(18,20,0.9)+dbinom(19,20,0.9)+dbinom(20,20,0.9)
# Above code is equal to below code
sum(dbinom(16:20,20,0.9))


# 3.
# P(rate of skipping class for every student) = 0.2
# Every student is mutually exclusive.
# 25 students at class.

# P(No student comes today.)
dbinom(25, 25, 0.2)
# Above code is equal to below code
0.2^25

#4. 
# P(X=16) + P(X=17) + P(X=18) + P(X=19) + P(X=20)
dbinom(10,25,0.2)+dbinom(11,25,0.2)+dbinom(12,25,0.2)+dbinom(13,25,0.2)+dbinom(14,25,0.2)+dbinom(15,25,0.2)
# Above code is equal to below code
sum(dbinom(10:15,25,0.2))
# Above code is equal to below code
pbinom(15,25,0.2)-pbinom(9,25,0.2)

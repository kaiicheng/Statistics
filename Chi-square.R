library(EnvStats)

# Variable test.
x = c(430, 435, 460,465, 438)
varTest(x, alternative = 'greater', sigma.squared = 100)


# Goodness of fit test.
x = c(224,119,130,48,59)
p = c(0.4,0.2,0.2,0.1,0.1)
chisq.test(x = x, correct = TRUE, p = p)
# X-squared = 3.7845, df = 4, p-value = 0.436.
# =>Do not reject H0.


# Test of independent.
x = matrix(c(35, 54, 23, 18, 76, 39),
           nrow = 2, ncol= 3, byrow = TRUE)
x
chisq.test(x = x)
# Reject H0.


# Test of Homogeneity.
x1 = c(72, 84, 49, 45)
x2 = c(91, 86, 88, 35)
z = cbind(x1, x2)  # column combine.
z
chisq.test(x)
# Reject H0.
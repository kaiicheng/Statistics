install.packages('EnvStats')
library(EnvStats)

A = c(6.28, 7.43, 8.17, 4.55, 6.46)
B = c(4.89, 7.46, 5.07)
t.test(x = A, y = B, paired = FALSE, mu = 0, var.equal = TRUE)

# Distribution.
?distribution()

x = c(430, 435, 460,465, 438)
varTest(x, alternative = 'greater', sigma.squared = 100)



install.packages('asbio')
library(asbio)

data = iris
data

# (1) three species => ANOVA (two sample group => t test)
y <- data$Sepal.Length
t <- data$Species

# y = as.factor(y)
# t = as.factor(t)

y
t

fit = lm(y~t) # (y affected by t)
# fit = lm(Sepal.Length~Species, data = data)

anova(fit)

# (2)
pairw.anova(y, t, method='lsd')

# (3)
sepal <- data$Sepal.Length
petal <- data$Petal.Length

cor(sepal, petal)

# (4)
x <- petal
y <- sepal

fit <- lm(y~x)

summary(fit)

# (5)

# (6) Var between/ Total var



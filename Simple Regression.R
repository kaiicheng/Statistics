# Simple Regression.

# Practice 1.

# Read the height_weight.csv file.
# df = read.csv(file.choose())
df = read.csv("height_weight.csv")
df

fit$coefficients

fit$residuals

fit =  lm(weight~height, data = df)
fit

summary(fit)

# Practice 2.
y = c(30000, 45000, 45000, 60000, 28000, 140000, 80000)
x = c(3, 2, 1, 6, 1, 4, 5)
fit = lm(y~x)
summary(fit)

# Plot.
plot(x, y)
lines(c(0, 140000), c(fit$coefficients[1],
                      fit$coefficients[1]+140000*fit$coefficients[2]))
# fit$coefficients[1] => Intercept.
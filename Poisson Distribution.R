# Poisson distribution

# Factorial(x) => x!

# 1.
# A hospital has 3 car accident patients.
# Find the poisson distribution and probability of 1 patients.
# X~ Poisson(𝜆=3)
dpois(1, 3)

#Find the probability of more than 3 patients on the same day.
# X~ Poisson(𝜆=3)
# P(X>3) = 1 − 𝑃(𝑋 ≤3)
1-ppois(3,3)

# 2.
# X~Poisson(𝜆=5)
# Randomly draw 20 samples.
rpois(20, 5)

# Calculate P(X≥4)
# 1 - P(X≤3)
1-ppois(3,5)

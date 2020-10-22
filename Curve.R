# Curve
# curve(expr, from = NULL, to = NULL, add = FALSE,
# xlim, ylim, xlab, ylab,¡K¡K.)

# x^2 from -2 to 2.
curve(x^2, -2, 2)

# log(x) from 0 to 10.
curve(log(x), 0, 10)

# Normal distribution from -3 to 3.
curve(dnorm(x,0,1), -3, 3)  

# 1/x from 0 to 3 and y from -5 to 5.
curve(1/x, 0, 3, ylim=c(-5,5))  

# Combine two plots
curve(-1/x, 0, 3, add=T)

# No add, then replace the previous one.
curve(x^2, -2, 0, xlim=c(-2,2))

# Add 2*x to the previous graph.
curve(2*x, 0, 2, add=T)

# Please use curve() to draw a circle in a plot by R. 
curve(sqrt(1-x^2),-1,1,ylim=c(-1,1))
curve(-sqrt(1-x^2),-1,1,ylim=c(-1,1), add=T)



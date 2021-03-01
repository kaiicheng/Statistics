# 1.Make 1000 random variables from Bin(15, 0.4)
sample <- rbinom(1000,15,0.4)
sample

# 2.Draw a bar plot of your samples
table<-table(sample)
barplot(table)

# 3.Calculate P(X=7) 
dbinom(7,15,0.4)

# 4. What is the proportion of number 7 in your sample
table(sample)
182/1000

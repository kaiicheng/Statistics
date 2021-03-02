# install.packages("dplyr")
# library(tidyverse)
# library(dslabs)
install.packages('EnvStats')
library(EnvStats)

# (一)
#####Answer######
x = c(252.1, 244.6, 254.9, 253.4, 239.3,
      246.4, 249.2, 241.7, 252.3, 237.2)
varTest(x, sigma.squared = 25, alternative = 'greater')
###########

x = c(252.1, 244.6, 254.9, 253.4, 239.3, 246.4, 249.2, 241.7, 252.3, 237.2)
varTest(x, alternative = 'greater', sigma.squared = 625)

# (二)
df <- read.csv("Marketing_campaign.csv")
df

# (1)
summary(df$Year_Birth)
mean(df$Year_Birth)
sd(df$Year_Birth)

# (2)
hist(df$Year_Birth)

# (3)

#####answer###
Q1 = qnorm(0.25, 50, 12)
Q2 = qnorm(0.50, 50, 12)
Q3 = qnorm(0.75, 50, 12)

I = sum(df$Year_Birth<Q1)
II = sum(df$Year_Birth>=Q1 & df$Year_Birth<Q2)
III = sum(df$Year_Birth>=Q2 & df$Year_Birth<Q3)
VI = sum(df$Year_Birth>Q3)

c(I, II, III, VI)

# Wrong!!!
# chisq.test(c(I, II, III, VI), p = C(0.25, 0.25, 0.25, 0.25))
chisq.test(c(I, II, III, VI), p = c(0.25,0.25,0.25,0.25))

########

age <- df$Year_Birth
age

summary(age)
x = c(43, 50, 51.07, 61)

p = c(0.25, 0.25, 0.25, 0.25)
chisq.test(x = x, correct = TRUE, p = p)

a# (4)
mean(df$Income)
sd(df$Income)
income <- df$Income
income


# (5)

###Answer###
dim(df)
dim(df)[1]

grp = rep(NA, dim(df)[1]) # rep (reptition) 2261 times
grp[df$Kidhome==0] = '1'
grp[df$Kidhome>0] = '2'
grp
grp = as.factor(grp)
grp

x = cbind(df$Income, grp)
bp = boxplot(V1~grp, data = x, ylab = 'Income', names = c('no kid', 'have kid'), pch = 18)

######

data_with_child <- subset(df, df$Kidhome !=0)
data_without_child <- subset(df, df$Kidhome == 0)

income_with_child <- data_with_child$Income
income_without_child <- data_without_child$Income

income_with_child
income_without_child

boxplot(income_with_child)
boxplot(income_without_child)

# (6)
####Answer#####
# Step 1
x1 = df$Income[df$Kidhome==0]
x2 = df$Income[df$Kidhome>0]
var.test(x1,x2) #先檢定兩樣本是否同質
# => 不同

#Step 2
t.test(x1, x2, paired = FALSE, mu = 0, var.equal = FALSE)  # Ignore df.
#!!!!!!11 Alternative?
#########

t.test(x = income_with_child, y = income_without_child, alternative = 'two.sided', mu = 0, var.equal = T)

# (7)
####Answer####
table(df$AcceptedCmp1)
##########

accept1 <- subset(df, df$AcceptedCmp1 == 1)
not_accept1 <- subset(df, df$AcceptedCmp1 == 2)

customer_accept1 <- accept1$AcceptedCmp1
customer_not_accept1 <- not_accept1$AcceptedCmp1

table(customer_accept1)
table(customer_not_accept1)

# (8)
####Answer####
table(df$AcceptedCmp1[df$Kidhome==0])
table(df$AcceptedCmp1[df$Kidhome>0])
# Test of homogeneity => matrix
x = matrix(c(1148, 132, 921,10),nrow = 2, byrow = F)
chisq.test(x)
# (df=number of row * number of column=(2-1)*(2-1)=1)
########

child_accept1 <- subset(data_with_child, data_with_child$AcceptedCmp1 == 1)
child_accept1
child_not_accept1 <- subset(data_with_child, data_with_child$AcceptedCmp1 == 2)
child_not_accept1
nrow(child_accept1)
nrow(child_not_accept1)


without_child_accept1 <- subset(data_without_child, data_without_child$AcceptedCmp1 == 1)
without_child_accept1
without_child_not_accept1 <- subset(data_without_child, data_without_child$AcceptedCmp1 == 2)
without_child_not_accept1
nrow(without_child_accept1)
nrow(without_child_not_accept1)

x1 = c(10, 0)
x2 = c(132, 0)
x = cbind(x1, x2)
chisq.test(x)

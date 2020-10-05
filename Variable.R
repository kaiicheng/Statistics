# Can not run because haven't download
fractions(0.3333)

install.packages("MASS")
library(MASS)

# Turn decimal into fraction.
fractions(0.3333)

# Variable
a <- 1 # 令a 的值為1, numeric type
a
b <- TRUE # 令b 的值為TRUE, logical type
b
c <- "Some words"
c
d = " 中文也可以"
d
z = 2 + 3i # 令z 的值為2 + 3i, complex type
z


a <- 1.6 
a
b <- 3
b
b <- as.integer(3)
b
c <- TRUE
c
d <- 2 + 3i
d
e <- "Dr.Lee"
e
student <- list(name="Ken", age=18, score=95)
student


f = c(1,5,3,7,5,3,7,4,3,5,3) # numeric type
f
g = c("One", "Two", "Three") # character type
g
h = c(f, g) # numeric + character -> character
h
class(f)
class(g)
class(h)

# Vector
x = c(3,0,2,0,3,2,3,6,1,2)
length(x) # how many elements
x[2] # the 2nd element
x[1:5] # the first 5 elements
x[-4] # all element except the 4th
x[c(1,2,5)] # specific elements
x[x>1] # all greater than 1
which(x>1) # which indices are greater than 1
x[!x>1] # all NOT greater than 1
which(!x>1)
x[x<1|x>3] # <1 or >3

# Sequence
c(1,2,3,4,5,6)#等於c(1:6)
seq(1,6) # From 1 to 6.
# 1 2 3 4 5 6
seq(1,7,by = 2)
# 1 3 5 7
seq (1, 2, length=5)
# 1.00 1.25 1.50 1.75 2.00
rep(6, times = 5)
# 6 6 6 6 6
rep(c(1:3), times = 4)
# 1 2 3 1 2 3 1 2 3 1 2 3
rep(c(1:3), each = 4)
# 1 1 1 1 2 2 2 2 3 3 3 3

# Vector operation
### Given x: 1,2,3,4,5 ; y: 2, 4, 6, 8, 10 ###
x = 1:5
y = seq(2,10, length.out = 5)  # Difference between length and length.out???
# length is euqal to length.out
### Vector operation ###
x+y # [1] 3 6 9 12 15
x*y # [1] 2 8 18 32 50
x^y # [1] 1 16 729 65536 9765625
x^2 # [1] 1 4 9 16 25
x+5 # [1] 6 7 8 9 10
### summation 總和 -function: sum(...) ###
sum(x) #[1] 15

# Data frame
Name<-c("Bob", "Max")
Score<-c(50,100)
age<-c(18, 20)
tmp <- data.frame(Name,Score, age)
tmp

# Matrix
# matrix(x, nrow= , ncol= , byrow=F)
matrix(c(1:6))
matrix(c(1:6), nrow=3) # Defaulted by column.
matrix(c(1:6), nrow=3, ncol=2,byrow=F)
matrix(c(1:6), nrow=3, ncol=2,byrow=T)

#  make this sequence: 
# 1, 2, 3, 8, 10, 12, 21, 24, 27, 40, 44, 48
# hint: (A sequence)*(B sequence)

seq1<-seq(1, 12)
seq1

seq2<-c(1,1,1,2,2,2,3,3,3,4,4,4)
seq2

seq1*seq2

seq3<-rep(c(1:4), each = 3)
seq3

seq1*seq3

# Load data
data = read.csv("C:/Users/Paul/Desktop/Statistics/1006/pill.csv") # pill.csv

# Histogram
hist(data$weight)

# Better histogram
hist(data$weight,
     main ="Histogram of Pills", xlab="weight(mg)",
     xlim =c(242.5,258.5), ylim=c(0,20),
     breaks=seq(243.5, 257.5,by=2),xaxt="n")
# Add axis. 
axis(1,at=seq(242.5, 258.5,by=2))
axis(2,at=seq(0, 20,by=5))

# Pie chart
class = table(data$class)
pie(class, main="Pie chart of pills")

# Better pie chart
class/sum(class)
pie(class, main="Pie chart of pills",
    labels = c("<250mg:36%","=250mg:18%",">250mg:46%"),
    col=c("red","blue","green"))

# Bar plot
barplot(class, ylim=c(0,25),main=“Bar plot of pills")

# Better bar plot
barplot(c(12,24,15,22),names.arg = c("A","B","C","D"),col = c("yellow","green","blue","red"))

a <-1+2
b <-2-1
c <-a-b

# # Question 1 ------------------------------------------------------------

deg <-1
mint <-21
DMS2rad <- function(x){
  rad <- pi*(deg+mint/60)/180
  result <- print(rad, "rad")
  return (result)
}
# Not completed


# Question 2 --------------------------------------------------------------

# Duration of volcanic Activity
#y ± dy = 25.53 ± 0.1 Ma 
#x ± dx = 29.66 ± 0.2 Ma
#d= x-y
#Max = x-y+dx-dy
#Min = x-y-dx+dy

# Minimum duration
Mind <- 29.66 - 25.33 + 0.2 - 0.1
Mind
print(Mind)
paste0(Mind)
Maxd <- 29.66 - 25.33 - (0.2 + 0.1)
Maxd
print(Maxd)
paste0(Maxd)


# Question 3 --------------------------------------------------------------
#Setting Directory ------------------------------------------------------
setwd("C:\\Users\\Ranasish\\Desktop\\Erlangen-1st Sem\\1st Semester-Course\\Computer course\\R Exercises\\Week3")
getwd()

# Reading CSV File
wk3_ex3 <- read.csv ("ex3_eqscals.txt", header=TRUE, sep="")
View(wk3_ex3)

colnames(wk3_ex3)<-c("X(km)","r(m)", "Mo(Nm)")
View(wk3_ex3)


# Ans 3a ------------------------------------------------------------------

## mean, median, sd, median absolute deviation of r
print(mean_r <-mean(wk3_ex3$r))
print(median_r<-median(wk3_ex3$r))
print(sd_r<-sd(wk3_ex3$r))
print(mad_r<-mad(wk3_ex3$r))

# mean, median, sd, median absolute evation of Mo
print(mean_Mo <-mean(wk3_ex3$Mo))
print(median_Mo<-median(wk3_ex3$Mo))
print(sd_Mo<-sd(wk3_ex3$Mo))
print(mad_Mo<-mad(wk3_ex3$Mo))


# Ans 3b ------------------------------------------------------------------

# Descriptive Plotting  Mo and r
boxplot(wk3_ex3$Mo, main="Boxplot of Mo")
print(summary(wk3_ex3$Mo))
hist(wk3_ex3$Mo)

boxplot(wk3_ex3$r, main="Boxplot of r")
print(summary(wk3_ex3$r))
hist(wk3_ex3$r)

plot(wk3_ex3$Mo, wk3_ex3$r)

print(paste0("No apparent outlier is found"))





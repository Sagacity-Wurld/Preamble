#===============================
#Time series on Electric Data
#===============================
library(forecast)

elect<-read.csv(file.choose())
DATE<-as.Date(elect$DATE)
ELEC.TS <- ts(elect$IPG2211A2N, start=c(1985,1), frequency = 12)
ELEC.TS
class(ELEC.TS)
plot(ELEC.TS, xlab="DATE",ylab="ELECTRIC PRODUCTION INDEX", main="MONTHLY ELECTRIC PRODUCTION PLOT", col="black")
ELEC.DP<-decompose(ELEC.TS, type="multiplicative")
plot(ELEC.DP)
layout(1:3)
plot(ELEC.DP$seasonal)
plot(ELEC.DP$trend)
plot(ELEC.DP$random)
june<-window(ELEC.TS, start=c(1985,6), frequency=T)
july<-window(ELEC.TS, start=c(1985,7), frequency=T)
june.ratio<-mean(june)/mean(ELEC.TS)
july.ratio<-mean(july)/mean(ELEC.TS)
june.ratio
july.ratio
mean(ELEC.TS)
ta
dif<-diff(ELEC.TS)
h <- hist(ELEC.TS, plot = FALSE, breaks = 30)
h
install.packages("moments")
library(moments)
skewness(ELEC.TS)
# 3. Plot the actual histogram
plot(h, col = "lightgray", main = "Histogram with Connected Peaks", xlab = "Changes")

# 4. Draw the line connecting the exact midpoint ('mids') and height ('counts') of each bar
lines(h$mids, h$counts, col = "blue", lwd = 2)
install.packages("e1071")
library(e1071)
EL_changes <- diff(ELEC.TS)
skewness(ELEC.TS)
# 3. Calculate the exact skewness number
skewness(EL_changes, na.rm = TRUE)
# this is 
mean(ELEC.TS)
summary(ELEC.TS)
var(ELEC.TS)
acf(ELEC.TS, type="covariance", lag.max=36, main="Autocovariance plot")
acf(ELEC.TS, lag.max=36, main="Autocorrelation Plot")
par(mfrow=c(2,1))
acf(ELEC.TS, lag.max=36, main="Autocorrelation Plot")
pacf(ELEC.TS, lag.max=36, main="Partial Autocorrelation Plot")
adf.test(ELEC.TS)
install.packages("tseries")
library(tseries)
library(urca)

# type = "none" forces the test to look at the raw data as-is, without hiding the trend
raw_test <- ur.df(ELEC.TS, type = "none")
summary(raw_test)
# so this shows that it is not stationary as the value of the test statistics is -0.9311 which is more positive than the 5% significance 
decom.elec<-decompose(ELEC.TS, type="multiplicative")
decom.elec
plot(decom.elec)
plot(tt$trend, main="Trend Component", ylab="Electricity Production Index")
plot(ELEC.TS)
layout(1:2)
plot(tt$seasonal, main="Seasonal Component", ylab="Electricity Production Index")
boxplot(ELEC.TS~cycle(ELEC.TS), main= "Seasonal boxplot of Electric Production", xlab="month", ylab="Production")

hist(ELEC.TS, main = "HISTOGRAM OF ELECTRIC PRODUCTION", xlab = "ELECTRIC PRODUCTION", col = "steelblue", border = "white", breaks = 20, freq = F)
curve(dnorm(x,, mean= mean(ELEC.TS),sd=sd(ELEC.TS)), add=T, col= "red", lwd =2)
abline(v=mean(ELEC.TS), col= "darkorange", lwd=2, lty=2)
abline(v=median(ELEC.TS), col= "darkgreen", lwd=2, lty=2)
legend("topright", legend=c("Normal curve", "Mean", "Median"), col=c("red","darkorange","darkgreen"), lty=c(1,2,2), lwd)

plot(decom.elec$random)

layout(1:2)
plot(decom.elec$random, main="Irregular Component")
acf(na.omit(decom.elec$random), main="ACF of Irregular Component")
elec.ts<-stl(ELEC.TS, s.window = "periodic")
acf(na.omit(elec.ts$time.series[,"remainder"]), main="ACF of STL Remainder")








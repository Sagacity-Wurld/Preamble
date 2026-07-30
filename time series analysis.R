#=========================
# TIME SERIES ANALYSIS
#=========================
help.search("time series")
data("AirPassengers")
AirPassengers
plot(AirPassengers, xlab= "Years", ylab = "Airpassengers", main ="AIRPASSENGERS OVER THE YEARS", type="l")
library(ggplot2)
install.packages("forecast")
library(forecast)
ggseasonplot(AirPassengers, year.labels=TRUE, year.labels.left=TRUE)+ylab("degrees")+ggtitle("AIRPASSENGERS")

ggseasonplot(AirPassengers,polar=TRUE)+ylab("degrees")+ggtitle("AIRPASSENGERS")
monthplot(AirPassengers)
apdecompose<-decompose(AirPassengers, type="multiplicative")
plot(apdecompose)
 apdecompose
TSdecompose<-stl(log10(apdecompose), s.window="periodic")
plot(TSdecompose)
data(AirPassengers)

TSdecompose <- stl(log10(AirPassengers), s.window = "periodic")

plot(TSdecompose)
TS_air <- window(AirPassengers, start=c(1949,1), end=c(1958,12), frequency=12)
TS_air

TS_test <- window(AirPassengers, start=c(1959,1), frequency=12)
TS_test

autoplot(TS_air, series="AIR") + autolayer(TS_test, series="Test")+ ggtitle("airpassngers training and test data")+ xlab("year")+ylab("passengers")+ guides(colour=guide_legend(title="Forecast"))



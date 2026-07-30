
data("AirPassengers")
AP <- AirPassengers
View(AP)
AP
plot(AP, ylab="passengers(1000s)")
layout(1:3)
plot(aggregate(AP))
boxplot(AP~cycle(AP))
plot(AP, ylab="passengers")
aggregate(AP)
112+118+132+129+121+135+148+148+136+119+104+118
class(AP)

library(ggplot2)

head(economics)
data("economics")
plot(economics$date,
     economics$unemploy,
     type = "l",
     xlab = "Date",
     ylab = "Number Unemployed",
     main = "US Unemployment")
data("economics")
economics
print(economics,n=20)
View(economics)
unemployts<-ts(economics$unemploy, start=c(1967,7), frequency=12)
unemployts
layout(1:3)
boxplot(unemployts~cycle(unemployts))
UM<-aggregate(unemployts)/12
plot(unemployts,type="l",xlab="Date",ylab="number of unemployed", main="US UNEMPLOYMENT SCHEME")
plot(UM, ylab = "umeployed")
class(economics)
unemployed.Jan<-window(unemployts, start=c(1968,1), frequency=TRUE)
unemployed.Mar<-window(unemployts, start=c(1968,3), frequency=TRUE)
Jan.ratio<-mean(unemployed.Jan) / mean(unemployts)
march.ratio<-mean(unemployed.Mar)/ mean(unemployts)
Jan.ratio
march.ratio
View(economics)
#lets check multiple plot analysis
unemploy.ts<- ts(economics$unemploy, start=c(1967,7), frequency=12)
psavert.ts<- ts(economics$psavert, start=c(1967,7), frequency =12)
pop.ts<- ts(economics$pop, start=c(1967,7), frequency = 12)
plot(cbind(unemploy.ts, psavert.ts, pop.ts))            
AP.unemploy <- ts.intersect(AP,unemploy.ts)


















#Data transformation in R

data("AirPassengers")
AP<-decompose(AirPassengers)
Trend<-AP$trend
Seasonal<-AP$seasonal
plot(cbind(Trend, Trend*Seasonal), lty=1:2)
Trend <- AP$trend
Seasonal <- AP$seasonal



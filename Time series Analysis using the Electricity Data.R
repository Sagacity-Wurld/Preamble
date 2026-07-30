data<- read.csv(file.choose(), sep=",", header=T)
head(data)
View(data)
class(data)
data$DATE<-as.Date(data$DATE)
Elec.ts<- ts(data$IPG2211A2N, start=c(1985,1), frequency = 12) 
Elec.ts
layout(1:3)
plot(Elec.ts)
aggregate(Elec.ts)
plot(aggregate(Elec.ts))
boxplot(Elec.ts~cycle(Elec.ts))
# View the first rows
head(data)

# View the last rows
tail(data)

# Check the structure
str(data)

# Summary statistics
summary(data)

# Count missing values
colSums(is.na(data))

# Check for duplicate rows
sum(duplicated(data))


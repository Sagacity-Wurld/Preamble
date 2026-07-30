  #matrix
p=matrix(data=c(1,1,2,3,3,4), nrow=2, ncol=3, byrow=TRUE)
p
q=c(1:3)
q
r=seq(from=5,to=7,length.out=1)
r
cbind(q,r)
cbind(c(1,2,3), c(2,3,3), r)
p=cbind(c(1,2,3), c(2,3,3), r, 10:12)
p
dim(p)
nrow(p)
ncol(p)
dim(p)[1]
matrix(1:4, nrow=2)
p[2,4]
p[,3]
p[2:3,]
d=matrix(c(0.3,4.5,55.3,91,0.1,105.5,-4.2,8.2,27.9),nrow=3,ncol=3)
d
d[,2:3]
d[,c(3,1)]
d[c(2,1),]
d[c(2,3),1:2]
diag(x=d)
d[-2,]

f=d
f
f[1,]=c(1,2,3)
f
f[c(1,3),2:3]=c(990,100)
f
#Exercise #3.1
#a. construct and store a 4*2 matrix that's filled row-wise with the values 4.3,
# 3.1,8.2,3.2,0.9,1.6, and 6.5 in that orde
 
m=matrix(data=c(4.3,3.1,8.2,3.2,0.9,1.6,6.5), nrow=4, ncol=2, byrow=TRUE)
m
#b. confirm the dimensions of the matrix from (a) are 3*2 if you remove any one row
p=m
p
p[-1,]
dim(p[-1,])
# c. overwrite the second column  of the matrix from (a) with that same column sorted 
# from the smalles to the largest
m[,2]=sort(m[,2],decreasing=FALSE)
m
# d. What does R return if you delete the fourth row and the first column from (c)? Use matrix to ensure the result is a single-column
#matrix, rather than a vector
m[-4,-1]
matrix(m[-4,-1], ncol=1)

#d.  store the bottom 4 elements of (c) as a new 2*2 matrix
y=m[c(3,4),]
y


#f.  Overwrite, in this order, the elements of (c) at positions (4,2),(1,2), (4,1), and (1,1) with −
#-1/2 of the two values on the diagonalof (e)
m[c(4,1),c(2,1)]=0.5*diag(y)


m
t(m)
b=diag(x=4)
b

h=rbind(c(2,5,2), c(6,1,4))
h
g=cbind(c(3,-1,1), c(-3,1,5))
g
h%*%g
dim(h)
dim(g)

v=t(g)
v
dim(v)
v%*%g
#for inverse
x=matrix(c(1,2,3,23,24,22,75,10,11), nrow=3)
x
solve(x)
x%*%solve(x)
 
#EXERCISE 3.2
#A.
2/7*(cbind(c(1,2,7),c(2,4,6))-cbind(c(10,30,50),c(20,40,60)))
#B.
p=matrix(c(1,2,7),ncol=1)
p
b=matrix(c(3,4,8), ncol=1)
b
#i p*b
dim(p)
dim(b)          
# this is not possible as the no of col is not equals to the no of row
#ii. 
dim(t(p))
dim(b)
t(p)%*%b
 100*diag(x=3)
j=diag(x=c(2,3,5,-1))
j
solve(j)%*%j-diag(x=4)
#for arrays 
A=array(data=1:24, dim=c(3,4,3))
A
p=array(data=seq(from=4.8,to=0.1,length.out=16),dim=c(4,2,6))
p

#LOGIC
foo=TRUE
foo
moo=matrix(data=c(T,F,T,T,T,T,T,T,T,F), nrow=2, byrow=TRUE)
moo
dim(x=moo)
1==2
1>=2
2>1
2>=1
1!=1
foo=c(1,2,3,4,45,66,7,8,232,221)
foo
moo=c(0,9,8,7,6,5,4,3,2,234)
moo
length(x=moo)==length(x=foo)
foo==moo
goo=foo[c(1,5)]
goo
gr=matrix(foo, nrow=5, byrow=TRUE)
gr
cr=matrix(moo,nrow=5,byrow=TRUE)
cr
gr==cr
qux=gr==cr
qux
any(qux)
all(qux)
#Exercise
#a. 
hit=c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1)
hit
hit==6
hit>=6
hit<=6+2
hit!=6
#b
yeh=hit[4:15]
yeh
ray=array(data=yeh, dim=c(2,2,3))
ray
dip=ray<=(6/2)+4
dip
roo=ray+2
roo
piy=roo<=(6/2)+4
piy
#c.
id=diag(x=10)
id
po=id==0
po
#d.
any(piy)
all(piy)
any(dip)
all(dip)
#e.
ae=diag(x=po)
ae
any(ae)
(6<4)||(3!=1)
3!=1
#Exercise 4.2
#a. 
foo=c(7,1,7,10,5,9,10,3,10,8)
foo
cat=foo>5|foo==2
cat
#b. 
bar=c(8,8,4,4,5,1,5,6,6,8)
bar
fat=bar<=6&bar!=4
fat
#c.
cat&fat
#d.
baz=foo+bar
baz
#i
baz>=14&baz!=15
#ii
gush=baz/foo
gush
gush>=4|gush<=2

1||1
myvec=c(1,-2,4,-6,-100,34,13)
myvec
myvec[c(1,3,5)]
myvec<1
myvec[c(T,F,T,T,F,F,F)]
myvec[myvec>4]
myvec[c(T,F)]
myvec[myvec>4]=209
myvec
which(x=myvec<4)
myvec[-which(x=myvec>=4)]
p=matrix(data=c(2,3,4,5,5,76,7,8,9,8,8,8), nrow=4,byrow=TRUE)
p
p[c(1,2),c(1,2)]=200
p
p[c(1),c(2,3)]
p[c(F,F,T,T),c(F,T,T)]
which(p<100)
p<3
p[p>5]=-7
p
c(p[,1],p[,2],p[,3])
which(x=c(p[,1],p[,2],p[,3])>2)
which(p<4,arr.ind=T)
#Exercise 4.3
#a. 
foo=c(7,5,6,1,2,10,8,3,8,2)
foo
#i.
bar=foo[foo>=5]
bar
#ii
foo[-which(x=foo>=5)]
#b.
baz=matrix(data=bar, nrow=2,ncol=3, byrow=TRUE)

baz
baz[c(2),c(2,3)]=(baz[c(1),c(2)])^2
baz
all(baz<=25&baz>4)

baz<=25&baz>4
#c.
qux=array(data=c(10,5,1,4,7,4,3,3,1,3,4,3,1,7,8,3,7,3),dim=c(3,2,3))
qux
which(x=qux==3|qux==4,arr.ind=TRUE)
which(qux==3|qux==4,arr.ind=TRUE)
#C(ii)
qux[which(qux<3|qux>=7,arr.ind=TRUE)]=100
qux
#d.
foo

foo[c(T,F)]
foo[c(0,1)]
foo
foo[c(1,0)]
#The reason been that "0" in R means pick nothing 
#STRING
poo="this is moses' character"
poo
 "damn">"dAmn"

x="This is very good uhn"
x
cat(x)
cat("this would really be good if epsilon is greater than an even number\n This is only valid if the above works")
qux=c("awesome", "R", "is")
qux
cat(qux[2],qux[3],"totally",qux[1], "!")
paste(qux[2],qux[3],"totally",qux[1], "!")
cat(qux[2],qux[3],"totally",qux[1], "!", sep="ttt")
a=3
b=4

cat("The value for a+b is ",a,"+",b,"=",a+b,sep="")
 cat("here is a string\nsplit\tto neww\b\n\n\tlines")
foo="This is your continuous assessment"
foo
substr(x=foo, start=1,stop=4)="Here"
foo
foo
gsub(pattern="Here",replacement="This", x=foo)
sub(pattern="Here",replacement="This", x=foo)

#Exercise 4.4
#a.
cat("\"The quick brown fox\n\tjumped over\n\t\tthe lazy dogs\"", sep="")
#b.


#construction
mydata=data.frame(person=c("Peter","Lois","Meg","Chris","Stewie"), age=c(42,40,17,14,1),sex=factor(c("M","F","F","M","M")))
mydata
mydata[,3]
mydata=data.frame(person=c("Peter","Lois","Meg","Chris","Stewie"), age=c(42,40,17,14,1),sex=factor(c("M","F","F","M","M")),stringsAsFactors=F)
mydata
mydata$person
newrecord=data.frame(person="Brian",age=7,sex=factor("M",levels=levels(mydata$sex)))
newrecord
mydata=rbind(mydata,newrecord)
mydata
funny=c("High","High","Low","Med","High","Med")
funny
funny=factor(x=funny,levels=c("Low","Med","High"))
funny
mydata=cbind(mydata,funny)
mydata
mydata$age.mon=mydata$age*10
mydata
mydata$funny=="High"
mydata[mydata$funny=="High",]
mydata[mydata$sex=="M",]
mydata[mydata$sex=="M",-3]

#Exercise5.2
#a.
dframe=data.frame(person=c("Stan","Francine","Steve","Rogers","Hayley","Klaus"),sex=factor(c("M","F","M","M","F","M"),levels=c("M","F")),stringsAsFactors=FALSE,funny=factor(c("High","Med","Low","High","Med","Med"),levels=c("Low","Med","High")))
dframe
age=c(41,41,15,1600,21,60)
age
dframe=cbind(dframe,age)
dframe
dframe=data.frame(dframe[,c(1,4,2,3)])
dframe
mydata
mydata2=data.frame(mydata[,-5])
mydata2
mydataframe=rbind(dframe,mydata2)
mydataframe
mydataframe[mydataframe$sex=="F",mydataframe$funny=="Med"|"High",]
mydataframe
mydataframe[(mydataframe$sex=="F")&(mydataframe$funny=="Med"|mydataframe$funny=="High"),]
mydataframe[substr(mydataframe$person,1,1)=="S",]
Inf+Inf
1^Inf

#Exercise 6.1
foo=c(13563,-14156,-14319,16981,12921,11979,9568,8833,-12968,8133)
foo
foo[-(which(is.infinite(x=foo^75)))]
foo[(x=foo^75)!=-Inf]
#b.
big=matrix(c(77875.40,27551.45,23764.30,-36478.88,-35466.25,-73333.85,36599.69,-70585.69,-39803.81,55976.34,76694.82,47032.00),nrow=3,byrow=T)
big
(big^65)/Inf
big[which((big^65)/Inf,arr.ind=T)]

mydata=data.frame(person=c("Peter","Lois","Meg","Chris","Stewie","Brian"),age=c(42,40,17,14,1,7),sex=factor(c("M","F","F","M","M","M")),stringsAsFactors=FALSE)
mydata
mydata[3,2]
mydata[,c(3,1)]
mydata[,c(3,1,2)]

mydata$Names

funny=factor(c("High","Low","Med","Low","High","Med"),levels=c("Low","Med","High"))
funny

Hi=cbind(funny,mydata)

Hi
Hi=Hi[,c(2,3,4,1)]
Hi
Hi$Age.mon=Hi$Age*10
Hi
Hi[Hi$Sex=="M",]
Hi[Hi$Sex=="M",-4]
Hi[Hi$Sex=="M",-3]
Hi[(Hi$Age>12|Hi$funny=="High")&Hi$Sex=="M"]


#Exercise 5.2
# a. Create and store this data frame as dframe in your R workspace.
dframe=data.frame(person=c("Stan","Francise","Steve","Rogers","Hayley","Klaus"),sex=factor(c("M","F","M","M","F","M")),funny=factor(c("High","Med","Low","High","Med","Med"),levels=c("Low","Med","High")))

dframe
dframe$person
dframe$sex
dframe$funny
dframe$age=c(41,41,15,1600,21,60)
dframe
dframe=dframe[,c(1,4,2,3)]
dframe
Hi
mydata2=Hi[,-5]
mydata2
mydataframe=rbind(mydata2,dframe)
mydataframe
#f.
mydataframe[(mydataframe$sex=="F"&mydataframe$funny=="Med")|(mydataframe$sex=="F"&mydataframe=="High"),]
#g.
mydataframe[substr(mydataframe$person,1,1)=="S",]

#sPECIAL VALUES, cLASSES,AND COERSION
qux=c(-42,565,-Inf,-Inf,Inf,-45632.3)
qux
is.infinite(qux)
is.finite(qux)
qux==Inf
qux==NaN
bar=c(NaN,54.30,-2.00,NaN,90094.12,-Inf,55.00)
bar
bar==NaN
is.nan(bar)
!is.nan(bar)
bar[-(which(is.nan(bar)|is.infinite(bar)))]
#Exercise 6.1
#ai.

foo=c(13563,-14156,-14319,16981,12921,11979,9568,8833,-12968,8133)
foo
foo[-(which(is.infinite(foo^75)))]
foo^75
foo[(which(is.finite(foo^75)))]
#ii
foo[foo^75!=-Inf]
#bi.
bar=matrix(data=c(77875.40,27551.45,23764.30,-36478.88,-35466.25,-73333.85,36599.69,-70585.69,-39803.81,55976.34,76694.82,47032.00),nrow=3,ncol=4,byrow=TRUE)
bar
which(is.nan(bar^67/Inf),arr.ind=TRUE)
bar^67/Inf
#ii
bar[(!is.nan((bar^67)+Inf))]
(bar^67)+Inf
bar[bar^67!=-Inf]
#confirmed
#iii
bar[bar^67==-Inf|is.finite(bar^67)]
bar^67

qux=c(NA,5.89,Inf,NA,9.43,-2.35,NaN,2.10,-8.53,-7.58,NA,-4.58,2.01,NaN)
qux
is.na(qux)
which(is.nan(qux))
which(is.na(qux)&!is.nan(qux))
quux=na.omit(qux)
quux
foo=list(member1=c(33,1,5,5.2,7),member2="NA or NULL?")
foo
foo[[1]]
foo[1]

#Exercise 6.2
#a.
foo=c(4.3,2.2,NULL,2.4,NaN,3.3,3.1,NULL,3.4,NA)
foo
#i
length(foo)
#ii
which(is.na(foo))
#iii
is.null(foo)
#(no it didnt)
#IV
is.na(foo[8])+4/NULL
#b.
pro=list(alpha=c(7,7,NA,3,NA,1,1,5,NA))
pro
pro$beta
pro$beta=c(3,5,9)

pro
bar=matrix(data=1:9,nrow=3,ncol=3,dimnames=list(c("A","B","C"),c("D","E","F")))
bar
attributes(bar)
class(bar)
sec=c(1,2,3,4)
sec
class(sec)
 sev=factor(c("green","blue","red"))
sev 
ORD.VAC=factor(c("Small","Large","Large","Regular","Small"),levels=c("Small","Regular","Large"),ordered=TRUE)
ORD.VAC
class(ORD.VAC)
1:4+c(T,F,F,T)
foo=34
foo
bar=TRUE

bar
paste("Definitely foo:",foo,";definitely bar:",bar,".",sep="")
bar.ch=as.character(foo)
bar.ch
as.logical(as.numeric(c("1","0","1")))
#Exercise 6.3
mine=matrix(data=c(2,5,8,11,3,6,9,12,4,7,10,13),nrow=3,byrow=T)
mine
as.character(mine)
close=matrix(data=c(34,23,33,42,41,0,1,1,0,0,1,2,1,1,2),nrow=5,ncol=3,byrow=F)
close
meet=as.data.frame(close)
meet
as.logical(meet[,2])
as.factor(meet[,3])
#PLOT(CHAPTER 7)
foo=c(1.1,2,3.5,3.9,4.2)
foo
bar=c(2,2.2,-1.3,0,0.2)
bar
plot(foo,bar)

v=matrix(data=c(foo,bar),ncol=2,byrow=F)
v
plot(v,type="l")
plot(foo,bar,type="l",main="Analysis",xlab="population",ylab="frequency")
plot(foo,bar,type="l",pch=17,main="Regession Mandate",xlab="myrecord",ylab="frequency",col="blue")

x=1:20

x
y=c(-1.49,3.37,2.59,-2.78,-3.94,-0.92,6.43,8.51,3.41,-8.23,-12.01,-6.58,2.87,14.12,9.63,-4.58,-14.78,-11.67,1.17,15.62)
y
plot(x,y,type="n",main="")

abline(h=c(-5,5),col="red",lty=2,lwd=2)
segments(x0=c(5,15),y0=c(-5,-5),x1=c(5,15),y1=c(5,5),col="red",lwd=2,lty=3)
points(x[y>=5],y[y>=5],col="darkmagenta",pch=4,cex=2)

points(x[y<=-5],y[y<=-5],col="darkgreen",pch=3,cex=2)

points(x[(x>=5&x<=15)&(y>-5&y<5)],y[(x>=5&x<=15)&(y>-5&y<5)],col="blue",pch=19)
points(x[(x>=5|x<=15)&(y>-5&y<5)],y[(x>=5|x<=15)&(y>-5&y<5)])
lines(x,y,lty=4)

arrows(x0=8,y0=14,x1=11,y1=2.5)
text(x=8,y=15,labels="sweet spot")
#Exercise 7.1
#a.
x=-3:3
x
y=7:13

y

qplot(x,y,type="n",main="")
abline(h=c(7,13),lty=2,lwd=2,col="grey")
abline(v=c(-3,3),lty=2,lwd=2,col="grey")
arrows(x0=-2.5,y0=12.5,x1=-1,y1=10.5,col="grey")
arrows(x0=2.5,y0=12.5,x1=1,y1=10.5,col="grey")

arrows(x0=-2.5,y0=10,x1=-1,y1=10,col="grey")
arrows(x0=-2.5,y0=7.5,x1=-1,y1=9.5,col="grey")
arrows(x0=2.5,y0=7.5,x1=1,y1=9.5,col="grey")
arrows(x0=2.5,y0=10,x1=1,y1=10,col="grey")
text(x=0,y=10,labels="SOMETHING\nPROFOUND")

#b.
Weight=c(55,85,75,42,93,63,58,75,89,67)

Weight
length(Weight)
Height=c(161,185,174,154,188,178,170,167,181,178)
Height
length(Height)
sex=factor(c("female","male","male","female","male","male","female","male","male","female
             "),levels=c("male","female"))



sex

mygraph=data.frame(Weight,Height,sex)
mygraph

plot(mygraph$Weight[mygraph$sex=="female"],mygraph$Height[mygraph$sex=="female"],xlab="Weight(kg)",xlim=c(40,100),ylim=c(150,190),ylab="Height(cm)",pch=2,col="blue")


points(mygraph$Weight[mygraph$sex=="male"],mygraph$Height[mygraph$sex=="male"],col="red",pch=17)
legend("bottomleft",legend=c("Male","Female"),pch=c(17,2),col=c("red","blue"))

lines(mygraph$Weight,mygraph$Height,lty=4)


install.packages("ggplot2")
library("ggplot2")
install.packages("ggplot2")
foo<- c(1.1,2,3.5,3.9,4.2)

foo
bar <- c(2,2.2,-1.3,0,0.2)
bar

qplot(foo,bar)

library("ggplot2")
qplot(foo,bar,main="my lovely plot")

data()
library(help="datasets")
?ChickWeight
ChickWeight[1:15,1:3]
library("tseries")
data(ice.river)
ice.river[1:9,]
mydatafile=read.table(file="C:\\Users\\user\\Documents\\myfiles.txt",header=T,sep=" ",na.string="*",stringsAsFactors=F)
mydatafile
mydatafile[,c(1,2)]=mydatafile[,c(3,4)]
mydatafile
mydata1=mydata[,c(1,3,4,2)]
mydata1
mydatafile$sex=as.factor(mydata$sex)
mydatafile$sex
mydatafile$funny=factor(mydatafile$funny,levels=c("Low","Med","High"))
mydatafile$funny
mydatafile
mydatafile$sex=factor(mydata$sex,levels=c("M","F"))
mydatafile$sex

write.table(x=mydatafile,file="C:\\Users\\user\\Documents\\somenewfile.txt",sep="@",na="??",quote=F,row.names=F)

ls()
search() 
ls("package:datasets")
ls("package:methods")
bar=matrix(nr=3,nc=3,dim=list(c("A","B","C"),c("D","E","F")),dat=1:9)
bar
args(matrix)  
args(array)
args(seq)
seq(from=-4,to=4,len=5)


`??seq
matrix(c(T,F,T,T),2,2)
args(matrix)
which(matrix(c(T,F,T,T),2,2)==T,arr.ind=T)
args(which)
which(matrix(c(T,T,T,F),2,2),a=T)
args(if)
a=81
b=4
if(a<=b){a=a^2}

a
x=5
y= -5:5
y
y==0
ifelse(test=y==0,yes=NA,no=x/y)
#exercise
vec1=c(2,1,1,3,2,1,0)
vec2=c(3,8,2,2,0,0,0)

#i
if((vec1[1]+vec2[2])==10){cat("print me!")}
#
if(vec1[1]>=2&&vec2[1]>=2){cat("print me!")}
if(!is.na(vec2[3])){cat("print me!")}

if((vec1+vec2)>3){vec1*vec2}else{vec1+vec2}

ifelse(vec1+vec2>3,yes=vec1*vec2,no=vec1+vec2)

mymat=matrix(as.character(1:16),4,4)
mymat




d=diag(mymat)
d

if(any(substr(d,1,1) %in% c("g","G"))){
  idx = which(substr(d,1,1) %in% c("g","G"))
  diag(mymat)[idx]="HERE"
} else {
  mymat=diag(nrow(mymat)) 
}
mymat

mymat=matrix(c("DANDELION","Hyacinthus","Gerbera","MARIGOLD","geranium","lingularia","pachasandra","SNAPDRAGON","GLADIOLUS"),3,3)
mymat
e=diag(mymat)
e
if(any(substr(e,1,1) %in% c("g","G"))){
  div=which(substr(e,1,1) %in% c("g","G"))
  diag(mymat)[div]="HERE"
} else {
  mymat=diag(nrow(mymat))
}
mymat


data()
AirPassengers
plot(AirPassengers, main="Monthly Records of AIR PASSENGERS IN AMERICA", xlab="years", ylab="number of persons", col="blue", lwd=3)
# THE MAIN AIM OF THIS IS TO MAKE THIS DATA STATIONARY FIRST WE TRY TO MAKE THE VARIANCE CONSTANT; WHICH IS GLARING FROM THE FACT THAT THERE IS HIGH VOLATILTY OR FLUCTUATIONS
data_1=log(AirPassengers)
data_1
plot(data_1,main="Monthly Records of AIR PASSENGERS IN AMERICA", xlab="years", ylab="number of persons", col="blue", lwd=3 )
#THE GRAPH THUS APPEARS TO HAVE A STABLE VARIANCE. NEXT IS TO DEAL WITH THE UPWARD TREND, THAT IS TO HAVE A CONSTANT MEAN
data_2=diff(data_1)
data_2
plot(data_2, main="Monthly Records of AIR PASSENGERS IN AMERICA", xlab="years", ylab="number of persons", col="blue", lwd=3)
#HENCE THE STATIONARITY OF THE DATA AHEAD 


install.packages("sensitivity")
library(sensitivity)
library(ggplot2)
n=100
x<- data.frame(
  beta = runif(n, 0.42, 0.78),
  gamma = runif(n, 0.175, 0.325),
  sigma = runif(n, 0.09999997, 0.1857142),
  mu = runif(n, 2.739726e-05, 5.088062e-05),
  Lambda = runif(n, 0.002739726, 0.005088062),
  d = runif(n, 7e-05, 0.00013)
)
colnames(x) = c("beta" , "gamma", "sigma", "mu", "Lambda", "d")
head(x)


y<-with(x, (Lambda*beta*sigma)/(mu*(sigma+mu)*(gamma+mu+d)))
x<-pcc(x,y, rank = TRUE, semi=FALSE,nboot=100)
print(x)
prcc_df$Lower <- prcc_result$PRCC[, "lower"]

prcc_df$Upper <- prcc_result$PRCC[, "upper"]

ggplot(prcc_df, aes(x = reorder(Parameter, PRCC), y = PRCC)) +
  geom_bar(stat = "identity") +
  geom_errorbar(aes(ymin = Lower, ymax = Upper), width = 0.2) +
  coord_flip() +
  labs(
    title = "PRCC Sensitivity Analysis with Confidence Intervals",
    x = "Parameters",
    y = "PRCC"
  ) +
  theme_minimal()

library(sensitivity)
library(ggplot2)

n <- 100

x <- data.frame(
  beta = runif(n, 0.42, 0.78),
  gamma = runif(n, 0.175, 0.325),
  sigma = runif(n, 0.09999997, 0.1857142),
  mu = runif(n, 2.739726e-05, 5.088062e-05),
  Lambda = runif(n, 0.002739726, 0.005088062),
  d = runif(n, 7e-05, 0.00013)
)

# Reproduction number (your formula)
y <- with(x, (Lambda * beta * sigma) / (mu * (sigma + mu) * (gamma + mu + d)))

# PRCC analysis
prcc_result <- pcc(x, y, rank = TRUE, semi = FALSE, nboot = 100)

print(prcc_result)
prcc_
df <- data.frame(
  Parameter = colnames(x),
  PRCC = prcc_result$PRCC
)
ggplot(prcc_df, aes(x = reorder(Parameter, PRCC), y = PRCC)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(
    title = "PRCC Sensitivity Analysis of R0",
    x = "Parameters",
    y = "PRCC"
  ) +
  theme_minimal()


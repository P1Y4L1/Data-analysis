print(getwd())
data<-read.csv("r.csv")
print("data")
data
summary(data)
head(data)
plot(data)
plot(data)
head(data)
plot(data)
set.seed(2)
library(caTools)
install.packages('caTools')
library(caTools)
split<- sample.split(data,SplitRatio = 0.7)
split
train<-subset(data,split="TRUE")
test<-subset(data,split="FALSE")
train
test
Model<-lm(happiness ~.,data=train)
summary(Model)
pred <-predict(Model,test)
pred
plot(test$happiness,type="l",lty=1.8,col="red")
lines(pred,type="l",col="blue")
plot(pred,type="l",lty=1.8,col="blue")
rm<- sqrt(mean(pred-data$happiness)^2)
rm

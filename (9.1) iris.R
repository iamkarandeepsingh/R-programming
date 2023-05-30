#import dataset
library(readxl)
iris_xls <- read_excel("iris.xls.xls")

#view dataset
View(iris_xls)

#remove first column
iris_xls$ID=NULL
View(iris_xls)

#missing value
sum(is.na(iris_xls))

#dimensions of data
dim(iris_xls)

#summary of data
summary(iris_xls)

#structure of data
str(iris_xls)

#building scatter plot to check independent variables
plot(iris_xls,main="Pairwise scatter plot")

#Splitting the data using a function from dplyr package
library(caret)
set.seed(123)
index= createDataPartition(iris_xls$Species, p=.70, list=FALSE)
train=iris_xls[index,]
test=iris_xls[-index,]
library(tidyverse)
view(train)#view training data
view(test)#view testing data
view(index)#view index file

#fit the model
model= nnet::multinom(Species~., data=train)
model

#Summarize the model
summary(model)

#predicting the values for trained dataset
pred=predict(model,newdata = test,"class")
pred

#Building classification table
tab=table(test$Species,pred)
tab

#Building a linear regression model
d=mutate(train,versicolor = as.numeric(Species=='versicolor'))
d
m=glm(versicolor~SepalLength,SepalWidt,family = binomial,data = d)
m
#Building a linear regression model
d=mutate(train,versicolor = as.numeric(Species=='versicolor'))
d
irismod= lm(versicolor~SepalLength+SepalWidth+PetalWidth+PetalLength+Species,data= d)
summary(irismod)

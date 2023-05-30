#Loading .csv dataframe in R
USArrests= read.csv("USArrests.csv",row.names = 1)

#View dataframe
View(USArrests)

#structure of dataframe
str(USArrests)

#summary of dataframe
summary(USArrests)

#kmeans clustering
set.seed(123)
km.out= kmeans(USArrests, centers = 4, nstart = 20)
km.out

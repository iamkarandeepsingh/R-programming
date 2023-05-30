#Loading data frame in R
nyc =read.csv("nyc.csv")

#View Data frame
View(nyc)

#View Dimensions
dim(nyc)

#View first 6 elements in the data frame
head(nyc)

#View last 6 elements in the data frame
tail(nyc)

#To view graphical interface of the data frame
plot(nyc,main="Pairwise scatter plot")

#To view co-relation between the functions.Here round tells till which digits we have to round the outcomes in the data.Here it is 3.
round(cor(nyc),3)

#Building Multiple Linear Regression Model.
nycmod_1= lm(Price~Food+Decor+Service+East,data= nyc)

#To view the summary of the model.
summary(nycmod_1)

#Building a model without Service bcz P value is close to 0.
nycmod_2= lm(Price~Food+Decor+East,data= nyc)

#To view the summary of the model
summary(nycmod_2)

#Building model without Food bcz it also shows dependence.
nycmod_3= lm(Price~Service+Decor+East,data= nyc)

#To view the summary of the model.
summary(nycmod_3)
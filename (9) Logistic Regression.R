library(caret)# library loaded for confusion matrix
crashTest_1= read.csv("crashTest_1.csv",row.names = 1)#To load the Training Data
crashTest_1_TEST= read.csv("crashTest_1_TEST.csv",row.names = 1)#To load Test Data
View(crashTest_1)#To view Training Data
View(crashTest_1_TEST)#To view Test Data
str(crashTest_1)#To view the structure of the Training Data
summary(crashTest_1)#To view the summary of the Training Data
summary(crashTest_1_TEST)#To view the summary of the Test Data
logisfit=glm(as.factor(CarType) ~.,crashTest_1, family='binomial')
logisfit=glm(formula = crashTest_1$CarType~.,family = 'binomial',
             data = crashTest_1)
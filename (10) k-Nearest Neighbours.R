library(caret)#for confusion matrix i.e. end result 
library(class)#for kNN
ServiceTrain= read.csv("serviceTrainData.csv")#loading Training Data
ServiceTest= read.csv("serviceTestData.csv")#loading Test Data
View(ServiceTrain)#View Training Data
View(ServiceTest)#View Test Data
str(ServiceTrain)#View Structure of the Training Data
str(ServiceTest)#View Structure of the Test Data
summary(ServiceTrain)#View Summary of Training Data
summary(ServiceTest)#View Summary of Test Data
predictedknn= knn(train = ServiceTrain[,-6],
                  test = ServiceTest[,-6],
                  cl= ServiceTrain$Service,
                  k= 3)#Implementing kNN 
print(predictedknn)#Print Predicted kNN
cOnf_Matrix= confusionMatrix(data =predictedknn,ServiceTest$Service)#To print Confusion Matrix though not working in this case because Yes/No are characters(Letters) and other attributes are numbers.


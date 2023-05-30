tripDetails= read.csv("tripDetails.csv")#Loading .csv file
View(tripDetails)#View dataframe 
str(tripDetails)#View the strucutre of the dataframe
summary(tripDetails)#View the summary of the dataframe
tripCLuster= kmeans(tripDetails,3)#Kmeans clustering is applied here 3 means that we need 3 clusters from this dataframe
print(tripCLuster)#The method / metric which is NOT useful to determine the optimal number of clusters in unsupervised clustering algorithms is

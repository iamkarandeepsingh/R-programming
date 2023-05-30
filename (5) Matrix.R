2>3
5>2
5>=2
2<3
2<=3
2<=2
2==3
2==2
2!=3
2!=2

#Creating Matrices
A=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3, ncol = 3, byrow = T)#if by-row=T then matrix will be arranged by row else default is by column
print(A)
#Scalar Matrix i.e. all values of matrix will be same
matrix(3, nrow = 3, ncol =3)
#Diagonal Matrix i.e. all the diagonal values will be same
diag(c(1,2,3),3,3)
#Identity Matrix i.e. all the diagonal values will be 1
diag( 1,3,3)
#How to know the dimensions of the Matrix i.e.(Matrix metrics)
 #Dimension of the matrix
dim(A)
 #Number of rows in the matrix
nrow(A)
 #Number of columns in the matrix
ncol(A)
 #Number of elements in the matrix
length(A)
#Accessing,Deleting and Editing a Matrix
A=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3, ncol = 3, byrow = T)
A
#To view columns in a matrix
A[,1:2]
#To view rows in a matrix
A[1:2,]
#Naming rows and columns of a matrix
colnames(A)= c("a","b","c")
rownames(A)= c("d","e","f")
A
#To view columns in a matrix after naming rows and columns
A[,c("a","b")]
#To view rows in a matrix after naming rows and columns
A[c("e","f"),]
#Access one entry on the matrix i.e. any one number
A[1,3]
A[3,2]
#Access a single column
A[,2]
#Access a single row
A[3,]
#Access everything except one column
A[,-2]
#Access everything except one row
A[-2,]
#How to use colon :
1:10 # this means all numbers from 1 to 10
10:2
#Access rows and columns by using column operator
A[1:3,1:2]
A[1:3,-3]#Here we print rows from 1 to 3 & all columns except 3
A[,1:2]
A[c(1,3),1:2]#Here we print 1st and 3rd row and 1st to 2nd column
A[c(1,3),c(1,2)]
#Merging rows ans columns to an exsiting matrix i.e.(Matrix Concatination)
#Merging rows
A=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3, ncol = 3, byrow = T)
B=matrix(c(10,11,12),nrow=1,byrow = T)
A
B
C=rbind(A,B)
C
#Merging columns
A=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3, ncol = 3, byrow = T)
B=matrix(c(10,11,12),ncol = 1,byrow = F)
A
B
C=cbind(A,B)
C
#Deleting a row
A[-2,]
#Deleting a column
A[,-2]
#Addition of 2 matrices
A=matrix(c(1,2,3,4,5,6,8,9,1),nrow = 3, ncol = 3, byrow = T)
B=matrix(c(3,1,3,4,2,1,5,1,2),nrow = 3, ncol = 3, byrow = T)
A
B
A+B
#Subtraction of 2 matrices
A-B
#Multiplication of 2 matrices
A*B #Element wise multiplication i.e.1st element by 1st and so on
A%*%B#Regular matrix multiplication 
#Division of 2 matrices
A/B


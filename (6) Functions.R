#Create a function 
 #volume of cylinder
volcylinder=function(rad=5,len=100)
{
  vol=pi*rad^2*len
  return(vol)
}
 #After creating a function we need to invoke the function in R by Ctrl+Shift+S
 #After invoking the function in R we need to assign some value i.e.
 #v=volcylinder(5,100)or () if arguments i.e. rad & len is pre assigned in function
 #v

#Multiple Input & Multiple Output functions (MIMO)
volcylinder_mimo=function(rad,len)
{
  vol=pi*rad^2*len
  sur_ar=2*pi*rad*len+2*pi*rad^2
  result=list("volume"=vol,"surface_area"=sur_ar)
  return(result)
}
 #After creating a function we need to invoke the function in R by Ctrl+Shift+S
 #After invoking the function in R we need to assign some value i.e.
 #v=volcylinder(5,100)
 #v
 #Since we have a list of result(volume & surface_area)
 #We need to print results one by one
 #result["volume"] for printing volume result
 #result["surface_area"]for printing surface_area result

#Inline functions
func = function(x) x^2+4*x+4
return(func)
 #After creating a function we need to invoke the function in R by Ctrl+Shift+S
 #After invoking the function in R we need to assign some value i.e.
 #f=func(3)
 #f or simply
 #func(3)

#Looping (apply,lapply,tapply)
 #apply
A=matrix(1:9,3,3)
A
apply(A,1,sum)#Here A=array, 1=margin i.e.along a row or by column (1 means rows),sum=operation
apply(A,2,sum)#Here A= array, 2= means columns, sum=operation
 #lapply (apply function but over a list)
A=matrix(1:9,3,3)
B=matrix(10:18,3,3)
A
B
New_list=list(A,B)
addition=lapply(New_list,sum)#Here New_list= list, sum= operation
addition
 #mapply (multiple list apply)
 #tapply
id=c(1,1,1,1,2,2,2,3,3)#Values that are random
value=c(1,2,3,4,5,6,7,8,9)#Id given to each value
tapply(value, id, sum)#value=vector(id used to solve operation),id=factor(operation to done on),sum=operation

#Control Structure
 # if-else if - else example
x=6
if(x>7){
  x=x+1
}else if(x>8){
  x=x+2
}else {
  x=x+3}
x

 #Sequence function seq (from=starting number,to=ending number,by=increment or decrements,length= number of elements required)
seq(from=1,to=10,by=2)
seq(from=1,to=10,length=4)

 #for loop example
n=5
sum=0
for(i in seq(1,n,1))
{
  sum=sum+i
  print(c(i,sum))
}
 #for loop example with if break
n=100
sum=0
for(i in seq(1,n,1))
{
  sum=sum+i
  print(c(i,sum))
  if(sum>15)
  {
    break
  }
}
 
 #while loop example
sum=0
i=0
fin_sum=15
while(sum<fin_sum)
{
  i=i+1
  sum=sum+i
  print(c(i,sum))
}

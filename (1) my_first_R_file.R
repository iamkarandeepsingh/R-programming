a = 11
b = a*10
print(c(a,b))

pi
letters
LETTERS
month.name
month.abb
logical()
integer()
is.double(pi)
is.character(month.name)
as.character(pi)
as.double(letters)
as.character(a)

X = c(2.3,4.5,6.7,8.9)
print(X)

# Vectors Example
X = c(2.3,4.5,6.7,8.9)
print(X)

# List Example : Employee details
ID = c(1,2,3,4)
emp.name =c("Man","Rag","Sha","Din")
emp.dept = c("HR","Tech","PM","Serv")
num.emp = 4
emp.list = list(ID, emp.name,emp.dept,num.emp)
emp.list = list("Id"= ID,"Names" = emp.name,"Dept"= emp.dept,"Total staff"=num.emp)
emp.list['Total staff']=5
emp.list[[2]][5]="Nir"
emp.list[[1]][5]=5
print(emp.list)
print(emp.list[[4]][1])
emp.ages = list("ages" = c(23,48,54,30,32))
emp.list= c(emp.list , emp.ages)
print(emp.list)

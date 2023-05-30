# Data frame example 2
pd=data.frame("Name"=c("Senthil","Senthil","Sam","Sam"),
              "Month"=c("Jan","Feb","Jan","Feb"),
              "BS" = c(141.2,139.3,135.2,160.1),
              "BP" = c(90,78,80,81))
print(pd)

# Data frame example 3
pd_new=data.frame("Name"=c("Senthil","Ramesh","Sam"),
                  "Department"=c("PSE","Data Analytics","PSE"))
print(pd_new)

#using left_join()
#to combine two dataframes
#Continue from
#example
library(dplyr)
pd_left_join1 = left_join(pd, pd_new, by="Name")
print(pd_left_join1)

#using right_join() #using right_join()
#to combine two dataframes
#Continue from
#example
pd_right_join2 = right_join(pd, pd_new ,by="Name")
print(pd_right_join2)

#using inner_join()
#to combine two data frames
#Continue from
#example
library(dplyr)
pd_inner_join1 = inner_join(pd_new, pd, by ="Name")
print(pd_inner_join1)

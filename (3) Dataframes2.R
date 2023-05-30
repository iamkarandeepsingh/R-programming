# Data frame example 2
pd=data.frame("Name"=c("Senthil","Senthil","Sam","Sam"),
              "Month"=c("Jan","Feb","Jan","Feb"),
              "BS" = c(141.2,139.3,135.2,160.1),
              "BP" = c(90,78,80,81))
print(pd)
# Data frame example 3
# melt operation sample code
library(reshape2)
Df = melt(pd, id.vars = c("Name","Month") ,measure.vars = c("BS", "BP") )
print(Df)
# cast operation sample code
# continued from previous code
# we use dcast as we are working on a dataframe
Df2 = dcast(Df,variable+Month ~ Name,value.var="value" )
print(Df2)
# Adding new variables
#Continue from
#example on slide 3
library(dplyr)
pd2 <- mutate(pd, add_BP = (BS+BP))#Make a new variable from existing variable 
print(pd2)

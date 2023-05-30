# Introduction to data frames
vec1 = c(1,2,3,4)
vec2 = c("R","Scilab","Java","Python")
vec3 = c("For prototyping","For prototyping","For Scaleup","For prototyping")
df = data.frame(vec1,vec2,vec3)
print(df)
df[[2]][2] = "R"
# continuing from previous example
# adding extra row and column:
df = rbind(df,data.frame(vec1=5,vec2="C", vec3="For Scaleup"))
print("adding extra row")
print(df)
df = cbind(df,vec4=c(10,20,30,40,50))
print("adding extra col")
print(df)
df2 = df[-2,-2]
print(df2)
# Manipulating rows in data frame
# continued from previous page
df[5,1]= 2.5
df[3,3]= "Others"
df[4,4]= 45
print(df)



bonds<- read.delim("bonds.txt",row.names = 1)#Load a .txt file in R
View(bonds)#View Dataset
head(bonds)#View top 6 elements in the data frame
tail(bonds)#View last 6 elements in the data frame
str(bonds)
summary(bonds)#To view summary of the model.
plot(bonds$CouponRate,bonds$BidPrice,
     main="Bid Price vs Coupon Rate",
     xlab = "Coupon Rate",
     ylab = "Bid Price")#To view graphical interface of the data frame.
abline(bondsmod)#To draw the regression line.
bondsmod = lm(BidPrice~CouponRate,data = bonds)#To view linear regression model.
summary(bondsmod)#To view summary of the model.

alpha=0.05
n=35
p=1
qt(p = 1-(alpha/2),df= n-p-1)

3.0661-(2.034515*0.3068)
3.0661+(2.034515*0.3068)

plot(bondsmod$fitted.values,rstandard(bondsmod),
     main="Residual plot",
     xlab = "Predicted values for bid Price",
     ylab = "Standardized Residuals")
abline(h=2,lty=2)
abline(h=-2,lty=2)
identify(bondsmod$fitted.values,rstandard(bondsmod))

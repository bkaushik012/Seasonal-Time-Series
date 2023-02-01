library(stats)
library(tseries)
library(seasonal)
library(TSA)
library(forecast)

#Select the data of apple prices in Mosco only
y=apples_ts[2,2:88]
yy=as.numeric(y)

#time series plot, acf and pacf plot of the original data. And the adf.test.
tsy=ts(yy,frequency = 12,start = c(2013,1))
plot(tsy,type = "l",main="apple prices in Mosco")
acf(tsy)
pacf(tsy)
adf.test(tsy)

#differencing and adf.test after differencing
diffy <- diff(yy)
tsy2=ts(diffy,frequency=12,start=c(2013,1))
adf.test(tsy2)

#time series plot, acf and pacf plot of first differencing data
plot(diffy,ylab="apple price",type = "l")
acf(diffy,main="acf")
pacf(diffy,main="pacf")
eacf(diffy)



#fitted model
fit1 = arima(yy,order = c(1,1,3),method="ML")
summary(fit1)
fit2=arima(yy,order=c(1,1,1),method="ML")
summary(fit2)
fit3=arima(yy,order=c(2,1,1),method="ML")
summary(fit3)
fit4=arima(yy,order=c(4,1,2),method="ML")
summary(fit4)
fit5=arima(yy,order=c(1,0,0),method="ML")
summary(fit5)



#histogram and Q-Q plot of residuals of fitted model ARIMA(1,1,3)
hist(rstandard(fit1),main="Histogram of Residuals of Fitted Model") 
qqnorm(rstandard(fit1));qqline(rstandard(fit1),col="red")
acf(rstandard(fit1),main="ACF plot of the Residuals")  



#estimation
pp=predict(fit1,12)
pp$pred

fit1 = Arima(yy,order = c(1,1,3))
autoplot(forecast(fit1,n=12),main="prediction of Mosco apple prices",
         ylab="apple prices")

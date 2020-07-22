library(forecast)
data1<-c(6.93,7.74,7.83,6.12,7.74,8.91,8.28,6.84,9.54,10.26, 9.54,8.73,11.88,12.06,12.15,8.91,14.04,12.96,14.85,9.99,16.2,14.67,16.02,11.61)
data1<-ts(data=data1, start=c(1975,1), frequency = 4)
#print(data1)



#추정값
hol<-holt(data1, h=4, level=c(95), exponential = FALSE, alpha = NULL, beta=NULL)
#print(fitted(hol))




#예측값1
holt2<-HoltWinters(data1, beta=FALSE, gamma=FALSE)
#print(forecast(holt2, h=4))

#예측값2
holt3<-HoltWinters(data1, gamma=FALSE)
#print(forecast(holt3))

#예측값3
holt4<-HoltWinters(data1, beta=FALSE)
#print(forecast(holt4))

#에측값4
hol<-hw(data1, h=12, seasonal = c("multiplicative"), level=c(95), exponential=FALSE, alpha=NULL, beta=NULL, gamma=NULL)
#print(forecast(hol, h=6))

#예측값5
holt5<-HoltWinters(data1)
#print(forecast(holt5))

#예측값6
ets1<-ets(data1, model="AAA")
#print(forecast(ets1, h=8))





#예측값 신뢰구간
#plot(data1, xlim=range(1975.1,1985.5), ylim=range(0, 20))
#par(new=TRUE)
#plot(hol,type="b",xlim=range(1975.1,1985.5), ylim=range(0, 20))
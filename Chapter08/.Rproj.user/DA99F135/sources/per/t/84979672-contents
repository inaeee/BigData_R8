library(forecast)
data1<-c(7792,6957,7726,8106,8890,9299,10625,9302,8314,8850,8265,8796,7836,6892,7791,8192,9115,9434,10484,9827,9110,9070,8633,9240)
data1<-ts(data=data1, start=c(1977,1), frequency = 12)
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
plot(data1, xlim=range(1977.1,1980.5), ylim=range(5000, 12000))
par(new=TRUE)
plot(hol,type="b",xlim=range(1977.1,1980.5), ylim=range(5000, 12000))
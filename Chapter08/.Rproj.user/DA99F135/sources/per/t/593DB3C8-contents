library(forecast)
data1<-c(42.36083, 44.00722, 43.67549, 43.66586, 44.25656, 43.77610, 37.36135, 38.93048, 38.28046, 39.11860, 36.93795, 37.40201, 31.91783, 31.55123, 30.91422, 31.83972, 32.40206, 32.75275, 25.81062, 26.64110, 26.36306, 26.59310, 24.80977, 26.54971)
data1<-ts(data=data1, start=c(2017,1), frequency = 12)
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
#plot(data1, xlim=range(2017.1,2019.5), ylim=range(0, 40))
#par(new=TRUE)
#plot(hol,type="b",xlim=range(2017.1,2019.5), ylim=range(0, 40))
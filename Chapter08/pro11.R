library(forecast)
data1<-c(5,11,16,23,36,58,29,20,10,8,3,1,1,2,11,27,47,63,60,39,28,26,22,11,21,40,78,122,103,73,47,35,11,5,16,34,70,81,111,101,73,40,20,16,5,11,22,40,60,80.9)
data1<-ts(data=data1, start=c(170,1), frequency = 10)
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
plot(data1, xlim=range(170.1,176.5), ylim=range(0, 150))
par(new=TRUE)
plot(hol,type="b",xlim=range(170.1,176.5), ylim=range(0, 150))
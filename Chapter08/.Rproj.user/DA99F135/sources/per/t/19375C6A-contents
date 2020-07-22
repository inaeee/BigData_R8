library(forecast)
data1<-c(45,37,46,39,36,24,32,23,25,32,32,32,59,74,75,60,71,61,71,57,71,68,79,73,76,71,67,75,79,62,63,57)
data1<-ts(data=data1, start=c(1950,1), frequency = 4)
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
#plot(data1, xlim=range(1950.1,1960.5), ylim=range(0, 100))
#par(new=TRUE)
#plot(hol,type="b",xlim=range(1950.1,1960.5), ylim=range(0, 100))
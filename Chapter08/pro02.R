library(forecast)
data1<-c(10.85959, 16.36423, 11.60564, 11.79665, 19.05954, 17.75215, 18.72996, 18.384555,5.59381, 18.88487, 23.40782, 21.94727, 28.19058, 22.73700, 28.08126, 26.16469, 21.71973, 24.64265, 27.89994, 30.39328, 26.42318, 35.99786, 37.51956, 33.09656)
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
plot(data1, xlim=range(2017.1,2019.5), ylim=range(0, 50))
par(new=TRUE)
plot(hol,type="b",xlim=range(2017.1,2019.5), ylim=range(0, 50))
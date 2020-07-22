library(forecast)
data1<-c(23.47359, 18.56000, 22.75696, 15.23990, 18.34075, 12.99859, 18.41205, 19.41997, 17.08437, 17.44508, 20.79865, 19.09796, 21.33774, 20.03270, 18.61254, 22.47486, 19.30955, 14.95327, 20.29158, 18.89309, 15.89805, 23.59116, 18.77220, 19.35965)
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
plot(data1, xlim=range(2017.1,2019.5), ylim=range(10, 30))
par(new=TRUE)
plot(hol,type="b",xlim=range(2017.1,2019.5), ylim=range(10, 30))
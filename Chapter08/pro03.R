library(forecast)
data1<-c(20.76499, 21.45699, 21.11433, 22.21733, 25.15785, 25.32793, 19.39189, 21.65977, 22.63776, 22.78534, 25.47590, 23.80804, 20.63986, 19.50473, 21.99378, 23.16018, 23.53711, 25.32724, 20.57420, 21.60400, 23.02355, 24.06270, 23.81139, 25.72168)
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
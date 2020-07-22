library(forecast)
data1<-c(14874.4,14923.3,14988.7,15054.1,15121.7,15184.2,15239.3,15288.9,15346.2,15393.5,15439,15483.5,15531.5,15579.4,15628.5,15677.3,15736.7,15788.3,15839.7,15900.6,15961.5,16018.3,16076.9,16139,16203,16263.3,16327.9,16398.9,16478.3,16538.2,16621.6,16697,16777.2,16833.1,16891.6,16956.8,17026.3,17085.4,17106.9,17169.4,17239.4,17292,17354.2,17414.2,17447.3,17482.6,17526,17568.7)
data1<-ts(data=data1, start=c(1981,1), frequency = 4)
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
#plot(data1, xlim=range(1981.1,1995.5), ylim=range(10000, 20000))
#par(new=TRUE)
#plot(hol,type="b",xlim=range(1981.1,1995.5), ylim=range(10000, 20000))
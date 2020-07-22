library(forecast)
data1<-c(234.289,244.289,250.426,259.426,258.054,284.599,328.975,346.999,365.385,363.112,397.469,419.18,442.769,444.546,455.544,466.655,477.221,482.704,502.601,518.173,528.173,538.173,545.894,554.894)
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
print(forecast(ets1, h=8))





#예측값 신뢰구간
plot(data1, xlim=range(1950.1,1958.5), ylim=range(200, 700))
par(new=TRUE)
plot(hol,type="b",xlim=range(1950.1,1958.5), ylim=range(200, 700))
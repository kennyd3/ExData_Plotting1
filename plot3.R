power <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
power$Date <- as.Date(power$Date,"%d/%m/%Y")
power2 <- as.data.table(power)  
dts <- power2[Date=="2007-02-01"|Date=="2007-02-02",]
sm1 <-ts(data = dts$Sub_metering_1)
sm2 <-ts(data = dts$Sub_metering_2)
sm3 <-ts(data = dts$Sub_metering_3)
png(file="plot3.png",width=480,height=480)
plot(sm1,ylab="Energy sub metering")
lines(sm2,col="red")
lines(sm3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1,
       col=c("black","red","blue"))
dev.off()

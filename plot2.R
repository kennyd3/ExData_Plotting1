power <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
power$Date <- as.Date(power$Date,"%d/%m/%Y")
power2 <- as.data.table(power)  
dts <- power2[Date=="2007-02-01"|Date=="2007-02-02",]
gpts <-ts(data = dts$Global_active_power)
png(file="plot2.png",width=480,height=480)
plot(gpts,
     ylab="Global Active Power (kilowatts)")
dev.off()
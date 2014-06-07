power <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
power$Date <- as.Date(power$Date,"%d/%m/%Y")
power2 <- as.data.table(power)
dts <- power2[Date=="2007-02-01"|Date=="2007-02-02",]
png(file="plot1.png")
hist(as.numeric(dts$Global_active_power),col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()

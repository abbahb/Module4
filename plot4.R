source("loadData.R")
dev.off()
par(mfrow=c(2,2))
## plot 1
plot(power_table_subset$DateTime,power_table_subset$Global_active_power,type = "l", xlab="",ylab="Global Active Power (Kilowatts)")
## plot 2
plot(power_table_subset$DateTime,power_table_subset$Voltage, type = "l", xlab="datetime", ylab="Voltage")
##plot 3
plot(power_table_subset$DateTime,power_table_subset$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(power_table_subset$DateTime,power_table_subset$Sub_metering_2, col="red")
lines(power_table_subset$DateTime,power_table_subset$Sub_metering_3, col='blue')
legend("topright", col=c("black","red","blue"),c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"),lty=c(1,1),bty="n",cex=0.5)
##plot 4
plot(power_table_subset$DateTime,power_table_subset$Global_reactive_power, type="l",xlab="datetime", ylab="Global_reactive_power")
##output to file plot4.png
dev.copy(png,file="plot4.png", width = 480, height=480)
dev.off()
cat("File plot4.png has been saved in ,",getwd())
dir()

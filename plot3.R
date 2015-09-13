source("loadData.R")
dev.off()
plot(power_table_subset$DateTime,power_table_subset$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(power_table_subset$DateTime,power_table_subset$Sub_metering_2, col="red")
lines(power_table_subset$DateTime,power_table_subset$Sub_metering_3, col='blue')
legend("topright", col=c("black","red","blue"),c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"),lty=c(1,1),lwd=c(1,1))
dev.copy(png,file="plot3.png", width = 480, height=480)
dev.off()
dir()
cat("File plot3.png has been saved in ,",getwd())



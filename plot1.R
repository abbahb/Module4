source("loadData.R")
hist(power_table_subset$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (Kilowatts)")
dev.copy(png, file="plot1.png", width = 480, height=480)
dev.off()
cat("File plot1.png has been saved in, ",getwd())
dir()

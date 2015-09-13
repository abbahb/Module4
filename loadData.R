setwd("C:/ARCHIVE/DATA_SCIENTIST/EXPLORATORY_DATA/ASSIGNMENT1")
if (!file.exists("household_power_consumption.txt")) {
## setwd("C:/ARCHIVE/DATA_SCIENTIST/EXPLORATORY_DATA/ASSIGNMENT1")
 temp <- tempfile()
 fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
 download.file(fileurl,temp)
 dir()
 file1 <- unzip(temp)
 unlink(temp)
 cat("Unzip file in working Dir ,",getwd())
 dir() } else
 { file1 <- "household_power_consumption.txt"}
cat("Read data in Current Dir")
dir()
power_table <- read.table(file1,header = TRUE,sep=";",na = "?")
object.size(power_table)
str(power_table)
head(power_table)
power_table$Date <- as.Date(power_table$Date, format="%d/%m/%Y")
head(power_table)
power_table_subset <- power_table[(power_table$Date == "2007-02-01") | (power_table$Date == "2007-02-02"),]
head(power_table_subset)
summary(power_table_subset)
str(power_table_subset)
power_table_subset$Global_active_power <- as.numeric(as.character(power_table_subset$Global_active_power))
power_table_subset$Global_reactive_power <- as.numeric(as.character(power_table_subset$Global_reactive_power))
power_table_subset$Voltage <- as.numeric(as.character(power_table_subset$Voltage))
date_time <- paste(power_table_subset$Date,power_table_subset$Time)
date_time
power_table_subset$DateTime <- strptime(date_time,format = "%Y-%m-%d %H:%M:%S")
head(power_table_subset$DateTime)
power_table_subset$Sub_metering_1 <- as.numeric(as.character(power_table_subset$Sub_metering_1))
power_table_subset$Sub_metering_2 <- as.numeric(as.character(power_table_subset$Sub_metering_2))
power_table_subset$Sub_metering_3 <- as.numeric(as.character(power_table_subset$Sub_metering_3))

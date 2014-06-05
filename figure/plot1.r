table <- read.table("household_power_consumption.txt", sep = ";",header = TRUE,stringsAsFactors = FALSE,na.strings = "?")
table <- table[table$Date=="1/2/2007"|table$Date=="2/2/2007",]
table$Date <- as.Date(table$Date)
table$Time <- strptime(table$Time,format = "%H:%M:%S")
hist(table$Global_active_power,col = "red", main = "Global Active Power", xlab = "Global Active Power(in kilowatts)")
dev.copy(png,"plot1.png")
dev.off()
table <- read.table("household_power_consumption.txt", sep = ";",header = TRUE,stringsAsFactors = FALSE,na.strings = "?")
table <- table[table$Date=="1/2/2007"|table$Date=="2/2/2007",]
new_col <- paste(table$Date,table$Time,sep = " ")
new_col <- strptime(new_col, format = "%d/%m/%Y %H:%M:%S")
plot(new_col,table$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power(in Kilowatts)",main = "")
dev.copy(png,"plot2.png")
dev.off()

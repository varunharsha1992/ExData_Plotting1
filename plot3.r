table <- read.table("household_power_consumption.txt", sep = ";",header = TRUE,stringsAsFactors = FALSE,na.strings = "?")
table <- table[table$Date=="1/2/2007"|table$Date=="2/2/2007",]
new_col <- paste(table$Date,table$Time,sep = " ")
new_col <- strptime(new_col, format = "%d/%m/%Y %H:%M:%S")
plot(new_col,table$Sub_metering_1,type = "l",xlab = "",ylab = "Energy Sub Metering")
lines(new_col,table$Sub_metering_2,type = "l",col = "red")
lines(new_col,table$Sub_metering_3,type = "l",col = "blue")
legend("topright",col = c("black","red","blue"),legend = c("sub_metering_1","sub_metering_2","sub_metering_3"),lwd = c(1,1,1))
dev.copy(png,"plot3.png")
dev.off()
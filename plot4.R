# Load the data from February 1, 2007 and February 2, 2007
source("tidy-data.R")

png(filename='plot4.png', width=480, height=480, units="px")

par(mfrow=c(2,2))

plot(data$datetime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power")

plot(data$datetime, data$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(data$datetime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(data$datetime, data$Sub_metering_2, col="red")
lines(data$datetime, data$Sub_metering_3, col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty="solid")

plot(data$datetime, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global Reactive Power")

dev.off()
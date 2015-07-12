# Load the data from February 1, 2007 and February 2, 2007
source("tidy-data.R")

# Render a PNG file with a graph of the submetering 1, 2, and 3
png(filename='plot3.png', width=480, height=480, units="px")
plot(data$datetime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(data$datetime, data$Sub_metering_2, col="red")
lines(data$datetime, data$Sub_metering_3, col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty="solid")

dev.off()
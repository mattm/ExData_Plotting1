# Load the data from February 1, 2007 and February 2, 2007
source("tidy-data.R")

# Render a PNG file with a graph of the Global Active Power over those two days
png(filename='plot2.png', width=480, height=480, units="px")
plot(data$datetime, data$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()

# Load the data from February 1, 2007 and February 2, 2007
source("tidy-data.R")

# Render a PNG file with a histogram of the Global Active Power from those two days
png(filename='plot1.png', width=480, height=480, units="px")
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()
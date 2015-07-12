library(lubridate)

if (file.exists("tidy-data.csv")) {
	data <- read.csv("tidy-data.csv")
} else {
  allData <- read.csv("household_power_consumption.txt", sep=";")
  data <- allData[allData$Date == "1/2/2007" | allData$Date == "2/2/2007",]
  write.csv(data, file="tidy-data.csv")
}

data$datetime <- dmy(data$Date) + hms(data$Time)
# Getting the data file, if it's now downloaded yet
if(!file.exists("data.zip")){
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="data.zip")
} else {
  print("File data.zip already exists, not refreshing it")
}

# Getting data
con <- unz("data.zip", "household_power_consumption.txt")
data <- read.csv(con, na.strings = "?", sep=";")
data <- (data[data$Date == "1/2/2007" | data$Date == "2/2/2007",])

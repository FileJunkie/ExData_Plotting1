source("common.R")

png(filename = "plot1.png", bg = "transparent")
hist(data$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()

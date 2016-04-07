source("common.R")

length <- dim(data)[1]

png(filename = "plot2.png", bg = "transparent")
plot(data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)", xaxt = "n")
axis(side = 1, at = c(0, length/2, length), labels = c("Thu", "Fri", "Sat"))
dev.off()

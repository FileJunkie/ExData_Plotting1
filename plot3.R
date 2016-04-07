source("common.R")

length <- dim(data)[1]

png(filename = "plot3.png", bg = "transparent")

plot(data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", xaxt = "n", col = "black")
lines(data$Sub_metering_2, col="red")
lines(data$Sub_metering_3, col="blue")
axis(side = 1, at = c(0, length/2, length), labels = c("Thu", "Fri", "Sat"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"), lty=1)

dev.off()

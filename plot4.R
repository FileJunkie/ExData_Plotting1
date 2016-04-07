source("common.R")

length <- dim(data)[1]

png(filename = "plot4.png", bg = "transparent")

par(mfrow=c(2,2))

# Plot 2
plot(data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)", xaxt = "n")
axis(side = 1, at = c(0, length/2, length), labels = c("Thu", "Fri", "Sat"))

# Plot 4-1
plot(data$Voltage, type="l", xlab="datetime", ylab="Voltage", xaxt = "n")
axis(side = 1, at = c(0, length/2, length), labels = c("Thu", "Fri", "Sat"))

# Plot 3
plot(data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", xaxt = "n", col = "black")
lines(data$Sub_metering_2, col="red")
lines(data$Sub_metering_3, col="blue")
axis(side = 1, at = c(0, length/2, length), labels = c("Thu", "Fri", "Sat"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"), lty=1)

# Plot 4-2
plot(data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power", xaxt = "n")
axis(side = 1, at = c(0, length/2, length), labels = c("Thu", "Fri", "Sat"))

dev.off()

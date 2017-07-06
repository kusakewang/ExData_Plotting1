## plot 2
source("load_data.R")
png(filename="plot4.png")
par(mfrow = c(2, 2))
with(epc_plot, plot(Time, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)",
                    xlab = ""))

with(epc_plot, plot(Time, Voltage, type = "l", ylab = "Voltage",
                    xlab = "datetime"))

with(epc_plot, plot(Time, Sub_metering_1, type = "l", ylab = "Energy sub metering",
                    xlab = ""))
with(epc_plot, lines(Time, Sub_metering_2, type = "l", col = "red"))
with(epc_plot, lines(Time, Sub_metering_3, type = "l", col = "blue"))
legend("topright", col=c("black","red","blue"), c("Sub_metering_1 ","Sub_metering_2 ", "Sub_metering_3"), 
       lty = 1)

with(epc_plot, plot(Time, Global_reactive_power, type = "l", ylab = "Global reactive power",
                    xlab = "datetime"))
dev.off()
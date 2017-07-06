## plot 2
source("load_data.R")
png(filename="plot3.png")
with(epc_plot,plot(Time, Sub_metering_1, type = "l", ylab = "Energy sub metering",
                   xlab = ""))
with(epc_plot,lines(Time, Sub_metering_2, type = "l", col = "red"))
with(epc_plot,lines(Time, Sub_metering_3, type = "l", col = "blue"))
legend("topright", col=c("black","red","blue"), c("Sub_metering_1 ","Sub_metering_2 ", "Sub_metering_3"), 
       lty = 1)
dev.off()
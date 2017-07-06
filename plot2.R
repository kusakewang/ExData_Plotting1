## plot 2
source("load_data.R")
png(filename="plot2.png")
with(epc_plot,plot(Time, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)",
                   xlab = ""))
dev.off()

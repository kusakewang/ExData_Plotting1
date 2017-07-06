## plot 1
source("load_data.R")
png(filename="plot1.png")
with(epc_plot, hist(Global_active_power, col = "red", 
                    main = "Global Active Power", xlab = "Global Active Power (kilowatts)" ))
dev.off()
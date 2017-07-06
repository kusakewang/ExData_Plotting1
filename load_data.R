rm(list = ls())
library(data.table)

## download and unzip data

epc <- read.table("exdata-data-household_power_consumption/household_power_consumption.txt",
                  header = TRUE, sep = ";", na.strings = "?")

## convert date and time variables
epc$Time <- strptime(paste(epc$Date, epc$Time), "%d/%m/%Y %H:%M:%S")
epc$Date <- as.Date(epc$Date, "%d/%m/%Y")

## choose data from the dates 2007-02-01 and 2007-02-02
dates <- as.Date(c("2007-02-01", "2007-02-02"),"%Y-%m-%d")

epc_plot <- epc[epc$Date %in% dates, ]

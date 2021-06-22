
getwd()

setwd("C:/Users/Vivek/Documents/GitHub/EDA Assignment 1")

library(readr)
library(lubridate)

data <- read.table("household_power_consumption.txt",header = TRUE,sep = ";", stringsAsFactors = FALSE)

str(data)
data$Date <- dmy(data$Date)
data$Time <- hms(data$Time)
data$Global_active_power <- as.numeric(data$Global_active_power)
data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
data$Voltage <- as.numeric(data$Voltage) 
data$Global_intensity <- as.numeric(data$Global_intensity)
data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)

completedata <- na.omit(data)

str(completedata)



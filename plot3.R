pow <- read.table("household_power_consumption.txt", sep = ";",
                  header = TRUE, na.strings = "?")
pow48 <- subset(pow, Date == "1/2/2007" | Date == "2/2/2007")
pow48$Time <- as.POSIXct(paste(pow48$Date, pow48$Time), 
                         format="%d/%m/%Y %H:%M:%S")
with(pow48, plot(Time, Sub_metering_1, type = "l", ann = F))
with(pow48, points(Time, Sub_metering_2, type = "l", col = "red"))
with(pow48, points(Time, Sub_metering_3, type = "l", col = "blue"))
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = c(1,1,1), 
       col = c("black", "red", "blue"))
title(ylab = "Energy sub metering")

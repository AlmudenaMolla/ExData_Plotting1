pow <- read.table("household_power_consumption.txt", sep = ";",
                  header = TRUE, na.strings = "?")
pow48 <- subset(pow, Date == "1/2/2007" | Date == "2/2/2007")
#pow48$Date <- as.Date(pow48$Date, "%d/%m/%Y")
#pow48$Time <- strptime(pow48$Time, "%H:%M:%S")
pow48$Time <- as.POSIXct(paste(pow48$Date, pow48$Time), 
                         format="%d/%m/%Y %H:%M:%S")
plot(pow48$Time, pow48$Global_active_power, type = "l", ann = FALSE)
title(ylab = "Global Active Power (kilowatts)")
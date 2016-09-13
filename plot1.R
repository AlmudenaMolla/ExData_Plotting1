pow <- read.table("household_power_consumption.txt", sep = ";",
                  header = TRUE, na.strings = "?")
pow48 <- subset(pow, Date == "1/2/2007" | Date == "2/2/2007")
hist(pow48$Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power")
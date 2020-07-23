fulldata <- read.csv("C:/Users/srspr/AppData/Local/Temp/household_power_consumption_OdiJtl", sep=";", na.strings="?")
data <- subset(fulldata, Date %in% c("1/2/2007","2/2/2007"))
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "Red")

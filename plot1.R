data <- read.csv("household_power_consumption.txt",sep = ";",colClasses = "character")
data$Date = as.Date(data$Date,"%d/%m/%Y")
dates <- (c("01/02/2007","02/02/2007"))
dates = as.Date(dates,"%d/%m/%Y")
data_processed <- subset(data,(data$Date == dates[1]) | (data$Date == dates[2]) )
hist(as.numeric(data_processed$Global_active_power),col = "red",main = "Global Active Power"
    , xlab = "Global_active_power(in kilowatts)" )
dev.copy(png,file = "plot1.png")
dev.off()
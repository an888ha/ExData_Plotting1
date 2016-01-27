## Data Processing part
data <- read.csv("household_power_consumption.txt",sep = ";",colClasses = "character")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

s1 <- as.numeric(subSetData$Sub_metering_1)
s2 <- as.numeric(subSetData$Sub_metering_2)
s3 <- as.numeric(subSetData$Sub_metering_3)
plot(datetime,s1, xlab="", ylab="Energy Sub melting" ,col = "black",type = "l")
lines(datetime,s2,col = 'red')
lines(datetime,s3,col = 'blue')
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,lwd = 3,col = c("black","red","blue"))
dev.copy(png,file = "plot3.png")
dev.off()

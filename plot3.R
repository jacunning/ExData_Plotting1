Household <- read.csv(file="household_power_consumption.txt", header=TRUE, sep=";", na="?", colClasses=c(rep("character", 2), rep("numeric",7)))
newData = Household[Household$Date == '1/2/2007' | Household$Date == '2/2/2007', ]
plot(strptime(paste(newData$Date,newData$Time), format='%d/%m/%Y %H:%M:%S'), newData$Sub_metering_1, type='n', main='', xlab='', ylab='Energy sub metering', col='black')
lines(strptime(paste(newData$Date,newData$Time), format='%d/%m/%Y %H:%M:%S'), newData$Sub_metering_1, col='black')
lines(strptime(paste(newData$Date,newData$Time), format='%d/%m/%Y %H:%M:%S'), newData$Sub_metering_2, col='red')
lines(strptime(paste(newData$Date,newData$Time), format='%d/%m/%Y %H:%M:%S'), newData$Sub_metering_3, col='blue')
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=c(2.5,2.5,2.5), col=c("black", "red", "blue"))
dev.off(dev.copy(png,file='plot3.png'))

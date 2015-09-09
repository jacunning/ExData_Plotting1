Household <- read.csv(file="household_power_consumption.txt", header=TRUE, sep=";", na="?", colClasses=c(rep("character", 2), rep("numeric",7)))
newData = Household[Household$Date == '1/2/2007' | Household$Date == '2/2/2007', ]
plot(strptime(paste(newData$Date,newData$Time), format='%d/%m/%Y %H:%M:%S'), newData$Global_active_power, type='l', main='', xlab='', ylab='Global Active Power (kilowatts)', col='black')
dev.off(dev.copy(png,file='plot2.png'))

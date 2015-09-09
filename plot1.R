Household <- read.csv(file="household_power_consumption.txt", header=TRUE, sep=";", na="?", colClasses=c(rep("character", 2), rep("numeric",7)))
newData = Household[Household$Date == '1/2/2007' | Household$Date == '2/2/2007', ]
hist(newData$Global_active_power, breaks=12, main='Global Active Power', xlab='Global Active Power (kilowatts)', col='red')
dev.off(dev.copy(png,file='plot1.png'))

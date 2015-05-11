txt<-"/Users/mafalda/Documents/R programming/Exploring data/Week1/household_power_consumption.txt"
data<-read.table(txt,header=T,sep=";",na="?")
newData <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007", ]
png(filename="plot1.png",width=480,height=480,units="px",bg="white")
hist(newData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)",breaks = 12, ylim = c(0, 1200))
dev.off()
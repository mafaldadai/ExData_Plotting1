txt<-"/Users/mafalda/Documents/R programming/Exploring data/Week1/household_power_consumption.txt"
data<-read.table(txt,header=T,sep=";",na="?")
newData <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007", ]
Datetime <- strptime(paste(newData$Date, newData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png(filename="plot2.png",width=480,height=480,bg="white")
plot(Datetime,newData$Global_active_power, type = "l",xlab="",ylab = "Global Active Power (kilowatts)")
dev.off()

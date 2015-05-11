txt<-"/Users/mafalda/Documents/R programming/Exploring data/Week1/household_power_consumption.txt"
data<-read.table(txt,header=T,sep=";",na="?")
newData <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007", ]
Datetime <- strptime(paste(newData$Date, newData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480,bg="white")
plot(Datetime, newData$Sub_metering_1, type = "l",col = "black",xlab = "", ylab = "Energy sub metering")
lines(Datetime, newData$Sub_metering_2, col = "red")
lines(Datetime, newData$Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

dev.off()
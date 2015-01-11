#plot4
setwd("C:\\Users\\Jack Sparrow\\Desktop\\PhD\\COURSERA\\EXPLORATORY DATA")
datos<-unzip("exdata-data-household_power_consumption.zip")
data_all<-read.table(datos,header=TRUE,sep=";",na.strings="?", stringsAsFactors=FALSE, dec=".")
data<-subset(data_all,Date=="1/2/2007"|Date=="2/2/2007")
dateandtime<-strptime(paste(data$Date,data$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
Sys.setlocale("LC_TIME", "English")
png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

plot(dateandtime,data$Global_active_power,type="l",ylab="Global Active Power",xlab="")

plot(dateandtime,data$Voltage,type="l",ylab="Voltage",xlab="datetime")

plot(dateandtime,data$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
points(dateandtime,data$Sub_metering_2,type="l",col="Red")
lines(dateandtime,data$Sub_metering_3,col="Blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2,col = c("Black","Red","Blue"),bty="n")

plot(dateandtime,data$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime")

dev.off()

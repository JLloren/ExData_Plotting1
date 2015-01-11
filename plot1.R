#plot1
setwd("C:\\Users\\Jack Sparrow\\Desktop\\PhD\\COURSERA\\EXPLORATORY DATA")
datos<-unzip("exdata-data-household_power_consumption.zip")
data_all<-read.table(datos,header=TRUE,sep=";",na.strings="?", stringsAsFactors=FALSE, dec=".")
data_all$Date<-as.Date(data_all$Date,"%d/%m/%Y")
data<-subset(data_all,Date=="2007-02-01"|Date=="2007-02-02")
hist(data$Global_active_power,col="Red",ylim=c(0,1200),main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

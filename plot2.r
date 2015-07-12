data1 <- "household_power_consumption.txt"
data <- read.table(data1, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
#str(subSetData)
datetime <- strptime(paste(Data2$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Data3 <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, Data3, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 

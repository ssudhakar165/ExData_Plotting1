data1 <- "household_power_consumption.txt"
data <- read.table(data1, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") 
#str(subSetData)
Data3 <- as.numeric(Data2$Global_active_power)
png("plot1.png", width=480, height=480)
hist(Data3, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 



# Ely X. Colon - EDA Assigment 1

# Read subset data

dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Create Global Active Power historgram

GlobalActivePower <- as.numeric(subSetData$Global_active_power)
png(filename='plot1.png', width=480, height=480, units='px')
hist(GlobalActivePower, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()
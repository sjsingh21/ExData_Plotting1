# Place the data file "household_power_consumption.txt" into the working directory to read
# Provide required attributes for read command

data <- read.table("household_power_consumption.txt", sep=";", header=T, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?")

# Subsetting the full data to obtain the data related to two days: 
data <- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 

# creating Plot1 with required pixel size, type of chart, colour and labels

png("plot1.png", width=480, height= 480)

hist(data$Global_active_power, col= "red", xlab= "Global Active Power (kilowatts)", ylab= "Frequency", main= "Global Active Power")

dev.off()
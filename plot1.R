#Read the data into small
source('readdata.R')

#Create a histogram and write it to a file
png(filename="plot1.png",width = 480, height = 480)
hist(small$Global_active_power, xlab="Global Active Power (kilowatts)", 
     main="Global Active Power", col="red")
dev.off()

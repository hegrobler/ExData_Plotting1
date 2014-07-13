#Read the data into small
source('readdata.R')

#Open the file
png(filename="plot3.png",width = 480, height = 480)

#Set the range for the Y Axis
g_range <- range(0, small$Sub_metering_1, small$Sub_metering_2, small$Sub_metering_3)

#Create the plot without any axis. I want to manually add them later
plot(small$Sub_metering_1, type="o", ylim=g_range,
     axes=FALSE, cex=0, ann=FALSE)

#Draw the additional lines on the graph
lines(small$Sub_metering_2, type="o", cex=0, col="red")
lines(small$Sub_metering_3, type="o", cex=0, col="blue")

#Create the x and Y axis axis
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri", "Sat"))
axis(2)

#Draw a box around the plot
box()

#Add the Y axis label
title(ylab="Energy sub metering")

#Add the legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black","green", "blue"), lty=1)

#Close the file handle
dev.off()


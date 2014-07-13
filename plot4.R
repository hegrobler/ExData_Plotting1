#Read the data into small
source('readdata.R')

#Open the file
png(filename="plot4.png",width = 480, height = 480)

#Specify that we want 4 plots
par(mfrow=c(2,2))

#############Create the top left graph ####################
#Set the range for the Y Axis
g_range <- range(0, small$Global_active_power)

#Create the plot without any axis. I want to manually add them later
plot(small$Global_active_power, type="o", ylim=g_range, 
     axes=FALSE, pch=NULL, cex=0, ann=FALSE)

#Create the x and Y axis axis
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri", "Sat"))
axis(2)

#Draw a box around the plot
box()

#Add the Y axis label
title(ylab="Global Active Power", cex=0.3)

############# Create the top right graph ####################
#Set the range for the Y Axis
g_range <- range(234, small$Voltage)

#Create the plot without any axis. I want to manually add them later
plot(small$Voltage, type="o", ylim=g_range,
     axes=FALSE, pch=NULL, cex=0, ann=FALSE)

#Create the x and Y axis axis
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri", "Sat"))
axis(2)
#Draw a box around the plot
box()

#Add the axis labels
title(ylab="Voltage", cex=0.3, xlab="datetime")

############# Create the bottom left graph ####################
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
title(ylab="Energy sub metering", cex=0.3)

#Add the legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.8, 
       col=c("black","red", "blue"), lty=1, bty="n")

############# Create the bottom right graph ####################
#Set the range for the Y Axis
g_range <- range(0, small$Global_reactive_power)

#Create the plot without any axis. I want to manually add them later
plot(small$Global_reactive_power, type="o", ylim=g_range,
     axes=FALSE, pch=NULL, cex=0, ann=FALSE)

#Create the x and Y axis axis
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri", "Sat"))
axis(2)

#Draw a box around the plot
box()

#Add the Y axis label
title(ylab="Global_reactive_power", xlab="datetime", cex=0.3)

#Close the file handle
dev.off()
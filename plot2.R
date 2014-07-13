#Read the data into small
source('readdata.R')

#Open the file
png(filename="plot2.png",width = 480, height = 480)

#Set the range for the Y Axis
g_range <- range(0, small$Global_active_power)

#Create the plot without any axis. I want to manually add them later
plot(small$Global_active_power, type="o", ylim=g_range, 
     axes=FALSE, pch=NULL, cex=0, ann=FALSE)

#Create the x and Y axis axis
axis(1, at=c(1,1440,2880), lab=c("Thu", "Fri", "Sat"))
axis(2)

#Draw a box around the plot
box()

#Add the Y axis label
title(ylab="Global Active Power (kilowatts)")

#Close the file handle
dev.off()

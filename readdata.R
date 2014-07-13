#Read in the data
ds <- read.csv("household_power_consumption.txt", sep=";", na.strings=c("?"))

# Combine Date and Time to create a new column called DateTime of type POSIXct
ds$Date <- as.Date(ds$Date, "%d/%m/%Y")

# Subset the data so that we only have data for 2007-02-01 and 2007-02-02 
small <- subset(ds, ds$Date %in% as.Date(c("2007-02-01", "2007-02-02")))

#Make sure that the row count is correct
if (nrow(small) != 2880) {
  stop("The dataset for 2 days should be 2880 (24 hours x 60 obs - once per minute)")  
}
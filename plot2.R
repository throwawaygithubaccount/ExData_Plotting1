## Load data
source('./getdata.R')

## Plot 2
png('./figure/plot2.png', width = 480, height = 480)
plot(x = subdata$DT, y = subdata$Global_active_power, 
     type = 'l', ylab = 'Global Active Power (kilowatts)')
dev.off()
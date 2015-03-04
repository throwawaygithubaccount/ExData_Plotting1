## Load data
source('./getdata.R')

## Plot 1
png('./figure/plot1.png', width = 480, height = 480)
hist(x = subdata$Global_active_power, 
     col = 'red', 
     xlab = 'Global Active Power (kilowatts)', 
     main = 'Global Active Power')
dev.off()


## Load data
source('./getdata.R')

## Plot 3
png('./figure/plot3.png', width = 480, height = 480)
plot(x = subdata$DT, y = subdata$Sub_metering_1, 
     type = 'l', ylab = 'Energy sub metering', xlab = '')
lines(x = subdata$DT, y = subdata$Sub_metering_2, col = 'red')
lines(x = subdata$DT, y = subdata$Sub_metering_3, col = 'blue')
legend(x = 'topright', 
       legend = names(subdata)[7:9], 
       col = c('black', 'red', 'blue'), 
       lty = 'solid')
dev.off()
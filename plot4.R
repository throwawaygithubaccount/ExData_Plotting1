## Load data
source('./getdata.R')

## Plot 4
png('./figure/plot4.png', width = 480, height = 480)
par(mfrow = c(2, 2))

## 4.1 - same as plot 2
plot(x = subdata$DT, y = subdata$Global_active_power, 
     type = 'l', ylab = 'Global Active Power', xlab = '')

## 4.2
plot(x = subdata$DT, y = subdata$Voltage, 
     type = 'l', ylab = 'Voltage', xlab = 'datetime')

## 4.3 - same as plot 3
plot(x = subdata$DT, y = subdata$Sub_metering_1, 
     type = 'l', ylab = 'Energy sub metering', xlab = '')
lines(x = subdata$DT, y = subdata$Sub_metering_2, col = 'red')
lines(x = subdata$DT, y = subdata$Sub_metering_3, col = 'blue')
legend(x = 'topright', 
       legend = names(subdata)[7:9], 
       col = c('black', 'red', 'blue'), 
       lty = 'solid', bty = 'n')

## 4.4
plot(x = subdata$DT, y = subdata$Global_reactive_power, 
     type = 'l', ylab = 'Global_reactive_power', xlab = 'datetime')

dev.off()
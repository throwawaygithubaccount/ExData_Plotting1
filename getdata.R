## Check to see if data file has already been made and load it. 
## If not made, make it.
if (file.exists('./data/subdata.RData')) {
    load('./data/subdata.RData')
} else {
    ## Load packages
    library(lubridate)
    
    ## Set up folder structure
    ## Hide warning if folder already exists
    dir.create('./data', showWarnings = FALSE)
    dir.create('./figure', showWarnings = FALSE)
    
    ## Download the raw data
    ## Change data_url accordingly
    data_url <- paste0('https://d396qusza40orc.cloudfront.net/', 
                       'exdata%2Fdata%2Fhousehold_power_consumption.zip')
    download.file(data_url, method = 'curl', 
                  destfile = './data/raw_data.zip')
    
    ## Unzip the data in the /data/ directory
    setwd('./data')
    unzip(zipfile = './raw_data.zip')
    setwd('../')
        
    alldata <- read.csv("./data/household_power_consumption.txt", 
                        sep = ";", na.strings  ="?", 
                        stringsAsFactors=FALSE)
    
    ## Subset out two days we need
    subdata <- subset(alldata, Date == "1/2/2007" | Date == "2/2/2007")
    
    ## Convert date and time to POSIX objects
    subdata$Date <- dmy(subdata$Date)
    subdata$Time <- hms(subdata$Time)
    subdata$DT   <- subdata$Date + subdata$Time
    
    ## Save it
    save(subdata, file = './data/subdata.RData')
}
# Download and extract data files
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
name <- "data.zip"
if(!file.exists("data.zip")) {
        download.file(url, destfile = name)
        if(!file.exists("UCI Electric Power")) {
                unzip(name)
        }
}


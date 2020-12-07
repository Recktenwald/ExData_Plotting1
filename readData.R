library(data.table)
library(dplyr)


df <-
    read.table(
        'household_power_consumption.txt',
        skip = 66637, 
        nrow = 2880,
        sep=";",
        col.names = colnames(
            read.table(
                "household_power_consumption.txt",
                nrow = 1,
                header = TRUE,
                sep = ";"
            )
        )
    )
df$Date <- as.Date(df$Date,format="%d/%m/%Y")
df$Datetime <- paste(df$Date, df$Time)
df$Datetime <- strptime(df$Datetime,format="%Y-%m-%d %H:%M:%S")
  




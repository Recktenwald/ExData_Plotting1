source('readData.r') # provides us with a dataframe

hist(df$Global_active_power,
     xlab="Global Active Power (kilowatts)",
     main = "Global Active Power",
     col = "red"
     )
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()
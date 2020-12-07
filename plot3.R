source('readData.r') # provides us with a dataframe


plot(df$Datetime,df$Sub_metering_1, type = "n",ylab = "Energy sub metering",xlab="")
lines(df$Datetime, df$Sub_metering_1, col = "black")
lines(df$Datetime, df$Sub_metering_2, col = "red")
lines(df$Datetime, df$Sub_metering_3, col = "blue")
legend(
    "topright",
    c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    lwd = 1,
    col = c("black", "red", "blue"),
    
)

dev.copy(png,file="plot3.png",width=480,height=480)
dev.off()


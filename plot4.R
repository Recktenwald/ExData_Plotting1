source('readData.r') # provides us with a dataframe



par(mfrow=c(2,2))
with(
    df,
    {
        plot(
            df$Datetime,
            df$Global_active_power,
            xlab = "",
            ylab = "Global Active Power",
            type = "l"
        )
        plot(
            df$Datetime,
            df$Voltage,
            xlab = "datetime",
            ylab = "Voltage",
            type = "l"
        )
        {plot(df$Datetime,df$Sub_metering_1, type = "n",ylab = "Energy sub metering",xlab="")
        lines(df$Datetime, df$Sub_metering_1, col = "black")
        lines(df$Datetime, df$Sub_metering_2, col = "red")
        lines(df$Datetime, df$Sub_metering_3, col = "blue")
        legend(
            "topright",
            c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
            lwd = 1,
            col = c("black", "red", "blue"),bty="n"
            
        )}
        plot(
            df$Datetime,
            df$Global_reactive_power,
            xlab = "datetime",
            ylab = "Global_reactive_power",
            type = "l"
        )
        
})





dev.copy(png,file="plot4.png",width=480,height=480)
dev.off()

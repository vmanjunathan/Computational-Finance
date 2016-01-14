require(quantmod)
require(Quandl)
require(TTR)

nif <- read.csv("C:/Users/MARUSHIKA/Desktop/GraphNCNIFTY.csv",stringsAsFactors = FALSE)
# nif$DateTime <- paste(nif$Date, nif$Time)
# head(nif,2)
# class(nif$DateTime)
# nif$DateTime <- as.POSIXct(nif$DateTime,format="%D-%M-%Y %H:%M:%S" )
# class(nif$DateTime)
# head(nif)
nif$Time <- as.POSIXct(nif$Time,format = "%H:%M:%S")
class(nif$Time)
head(nif,2)
nif1<- as.xts(nif[,3:6], order.by = nif$Time)
names(nif1)<-c("Open","High","Low","Close")
head(nif1,2)



#-------------------------------------------------

nif1<- as.xts(nif$Open, order.by = nif$Time)
head(nifty2)
rm(nifty1)
nifty1 <- as.data.frame(nifty[,c(9,3)], format = "%d-%M-%Y %H:%M:%s", drop = TRUE)
nifty1$DateTime <- as.Date(nifty1$DateTime,format = "%D-%M-%Y %H:%M:%S" )
head(nifty1)
nifxts <- as.xts(nifty1$Open, order.by=nifty1[,1])
class(nifxts)
require(quantmod)
head(nifxts)

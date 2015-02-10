pollutantmean <- function(directory, pollutant, id = 1:332) {
        fname <- paste(id,"csv",sep = ".")
        path <- paste(directory,fname,sep="\\")
        ldata <- read.csv(path)
        
        if (pollutant == "s") {
                sdata <- ldata["sulfate"]
                sbad <- is.na(ldata["sulfate"])
                sclean <- sdata[!sbad]
                meandata <- sclean
        }
        else if (pollutant == "n") {
                ndata <- ldata["nitrate"]
                nbad <- is.na(ldata["nitrate"])
                nclean <- ndata[!nbad]
                meandata <- nclean
        }
        
        mean(meandata)
}
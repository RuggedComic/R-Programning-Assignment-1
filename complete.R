complete <- function(directory, id = 1:332) {
        for (i in id){
                dframe <- data.frame(matrix(0, ncol = 2, nrow = id))
                
                if (i < 10) {
                        pfname <- paste("00",i,sep = "")      
                }
                if (i >= 10 && i < 100) {
                        pfname <- paste("0",i,sep = "")
                }
                fname <- paste(pfname,"csv",sep = ".")
                path <- paste(directory,fname,sep = "\\")
                ldata <- read.csv(path)
                bad <- is.na(ldata)
                cleand <- ldata[!bad]
                frows <- nrow(cleand)
                dframe[1 == i, 2 < frows]
        }
        dframe
}
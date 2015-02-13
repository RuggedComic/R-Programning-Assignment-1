complete <- function(directory,id = 1:332) {
        nm <- c("ID", "nobs")
        df <- as.data.frame(matrix(nrow = 0, ncol = 2,dimnames = list(NULL, nm)))
        filenames <- paste(sprintf("%03d", id), ".csv", sep ="")
        for (file in filenames){
                nm <- c("ID", "nobs")
                path <- paste(directory, file, sep = "\\")
                tempdf <- as.data.frame(matrix(nrow = 0, ncol = 2,dimnames = list(NULL, nm)))
                tempdata <- read.csv(path)
                lastrow <- tail(tempdata, 1)
                rowcount <- nrow(na.omit(tempdata))
                id <- lastrow$ID
                tempdf <- cbind(ID = id, nobs = rowcount)
                df <- rbind(df, tempdf)
                rm(tempdata)
                rm(rowcount)
                rm(id)
                rm(tempdf)
        }
        print(df)
}
corr <- function(directory, threshold = 0) {
        fname <- paste(id,"csv",sep = ".")
        path <- paste(directory,fname,sep="\\")
        ldata <- read.csv(path)

        
        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0
        
        ## Return a numeric vector of correlations
}
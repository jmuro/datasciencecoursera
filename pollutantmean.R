
pollutantmean <- function(directory, pollutant, id = 1:332) {
    files_data<-list.files(path = directory)
    y<-data.frame()
    for (i in id){
        x<-read.csv(paste(directory,files_data[i], sep = "/"))
        y<-rbind(y,x) 
    }
    return (mean(y[,pollutant],na.rm=TRUE))
}

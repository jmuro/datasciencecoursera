
pollutantmean <- function(directory, pollutant, id = 1:332) {
    files_data<-list.files(path = directory)
    y<-data.frame()
    for (i in id){
        x<-read.csv(paste(directory,files_data[i], sep = "/"))
        y<-rbind(y,x) 
    }
    mean(y[,pollutant],na.rm=TRUE)
  
}



complete <- function(directory, id = 1:332) {
    files_data<-list.files(path = directory)
    salida=c(1)
    datos<-data.frame()
    for (i in id){
      conta=0
      x<-read.csv(paste(directory,files_data[i], sep = "/"))
      for (j in 2:nrow(x)) {
        if(!is.na(x[j,2])) {
          conta=conta +1
          salida<-c(id,conta)
        }
      }
    }
}    




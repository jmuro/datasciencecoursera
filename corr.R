
corr <- function(directory, th = 0 ) {
  files_data<-list.files(path = directory)
  resultado<-c()
  for(i in 1:332){
    x<-read.csv(paste(directory,files_data[i], sep = "/"))
    cases<-sum(complete.cases(x))
    if(cases > th){
        y<-na.omit(x)
        valor<-cor(y[,2],y[,3])
        ##print(valor)
        resultado<-cbind(resultado,valor)
    }
  }
  return(as.vector(resultado))
}


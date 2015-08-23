

complete <- function(directory, id = 1:332) {
  files_data<-list.files(path = directory)
  data<-data.frame()
  for (i in id){
    x<-read.csv(paste(directory,files_data[i], sep = "/"))
    cases<-sum(complete.cases(x))
    temp<-data.frame(i,cases)
    data<-rbind(data,temp)
  }  
  colnames(data) <- c("id", "nobs")
  return(data)
}



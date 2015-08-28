best <- function(state, outcome) {
  datos <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  outcome_list<-c("heart attack","heart failure","pneumonia")
  state<-toupper(state)
  if(!any(datos$State==state))
  {
    stop("invalid state")
  }
  if(!any(outcome==outcome_list))
  {
    stop("invalid outcome")
  }

  if(outcome=='heart attack'){
    pos<-11
  }
  else if(outcome=='heart failure' ){
    pos<-17
  }
  else{
    pos<-23
  }
  prueba<-datos[datos$State==state,]
  ord.x<-order(prueba[pos])
  prueba[ord.x[1],2]

}

#Parte 2

completos <- function(directorio, id = 1:332) {
  nobs <- numeric()
  for(j in id) {
    casoscom<- read.csv (sprintf("%03d.csv", j)) 
    nobs <-c(nobs, sum(complete.cases(casoscom))) 
    
  }
  dataframe<- data.frame(id, nobs)
  print(dataframe)
}

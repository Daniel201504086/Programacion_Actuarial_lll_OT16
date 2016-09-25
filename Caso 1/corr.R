#corr("specdata", 150)
#primeros 6 digitos del resultado son: -0.01896 -0.014051 -0.04390 -0.06816 -0.12351 -0.07589

#corr("specdata", 5000) 
#numeric (0)

corr <- function(directorio, horizonte = 0) {
   source("completos.R")
  correlacion<-(numeric)
  
  
  framecompletos <- completos(directorio, 1:332)
  
  idcom <- framecompletos[framecompletos["nobs"] >= horizonte,]$id 
  
  
  
  for(j in idcom) {
    data <- read.csv(sprintf("%03d.csv",s))
    completos<- data[complete.cases(data), ] 
    correlacion <- c(correlacion, cor(completos$sulfate, completos$nitrate)) 
   
  }
  return(funcion)
}

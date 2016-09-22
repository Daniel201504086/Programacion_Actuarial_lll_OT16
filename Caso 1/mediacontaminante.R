#Parte1

mediacontaminante <- function(directorio, contaminante, id=1:332){
  x <- id
  y<- (as.character(substitute(contaminante)))
  nobs<- numeric()
datos<-numeric()
  for (j in x){
  data <- read.csv(sprintf("%03d.csv", j))
  nobs <- c(nobs,sum(complete.cases(data)))
  datos<- c(datos,sum(data[[y]], na.rm=TRUE))
}
  dataframe<- data.frame(id, nobs)
  dataframe2<- data.frame(id,datos)
   suma<- c(sum(dataframe$nobs))
   sumadatos<- c(sum(dataframe2$datos))
  media<-(sumadatos/suma)
  print(media)
}

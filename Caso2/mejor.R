mejor <- function(estado, resultado){

        data <- read.csv("outcome-of-care-measures.csv")
        
        filtro<-subset(data, data$State == estado)
        
        filtro
        
        if (resultado== "ataque"){ 
        
                filtro2<- data.frame( filtro[2], filtro[11])
                
        }else if (resultado=="falla"){ 
                
                filtro2<- data.frame( filtro[2], filtro[17])
                
        }else if (resultado== "neumonia"){ 
                filtro2<- data.frame( filtro[2], filtro[23])
                #filtro2
                
               
        }else {(stop("Invalido"))
        }
       
        minimo <- min(filtro2[,2])
        hospital<-subset(filtro2,filtro2[,2]==minimo)
        hospital
        
  
       }
        
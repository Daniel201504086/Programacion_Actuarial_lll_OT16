mejor <- function(estado, resultado){

        data <- read.csv("outcome-of-care-measures.csv")
        
        filtro<-subset(data, data$State == estado)
        
        
        
        if (resultado== "ataque"){ 
        
                filtro2<- data.frame( filtro[2], filtro[11])
                
        }else if (resultado=="falla"){ 
                
                filtro2<- data.frame( filtro[2], filtro[17])
                
        }else if (resultado== "neumonia"){ 
                filtro2<- data.frame( filtro[2], filtro[23])
                #filtro2
                
               
        }else {(stop("Invalido"))
        }
       
        
        
        filtro2<-order(filtro2[,2])
        

        
        ranking1 <- (filtro2[1,ranking])
        raking1
        
  
       }
        
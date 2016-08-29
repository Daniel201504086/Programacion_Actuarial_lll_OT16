1 # Clase del 25/08/2016
2
3 #Crear vectores con la función vector
x <- vector(mode="numeric", length = 5L)
x

#Crear vectores con la fución c
class(x)
x

x<- c(TRUE, FALSE, T, F)
class(x)
x


x<- 5:10
x
class(x)

x<-10:0
x


x<-c(1+2i, 5, 3+9i, -4-5i)
x
class(x)

x<- c("a","b","c","d")
x

#Mezcla de objetvos en un vector

y<- c(1.7, "a") #caracter
y

y<- c(TRUE, 2) #numerico
y
class(y)

y<- c("a", TRUE) #caracter
y
class(y)

y<- c(TRUE, 10L, 8.5)
y
class(y)

# Orden de coacción/coerción explícita
# 1 Character
# 2 complex
# 3 numeric
# 4 integer
# 5 logical



#Coerción explícita


z <- 0:6
as.numeric(z)
as.logical(z)
as.complex(z)

z<-c(1+2i, 3+4i, 8, 0+3i)

z<- c("a")
as.numeric(z)

#Listas (Es un vector de vectores y cada uno tiene su propia clase)

x<- list("a", 2, 3:100)
x

class(x)

#Matrices


m<- matrix(nrow = 2, ncol = 3)
m

dim(m)

attributes(m)
#cambio de dimensiones de 2x3 a 3x2

dim(m) <- c(3,2)
m
#crear una matriz con datos

m<- matrix(data= 1:6, nrow=3, ncol=3)
m

#SI  BYROW = TRUE, SE ORDENARAN POR RENGLON LOS DATOS
m<- matrix(data= 1:6, nrow=3, ncol=3, T)
m
class(m)


        

#str elementos en una matriz

dim(m) <- c(2,3)

x<- c(1,2,3)
y<- c("a","b","c")
z<- c(x,y)
z

m1 <- rbind(m, x)
m1

m2 <-cbind(m,x)
m2

m1 <- rbind(m1, y)
m1

m1<- cbind(m1, y)
m1


install.packages("rmarkdown")











## Quiz Semana 1

#Punto 4
x<-4L
class(x)

#Punto 5
x<-c(4,"a",TRUE)
class(x)

#Punto 6
x<-c(1,3,5)
y<-c(3,2,10)
rbind(x,y)

# Punto 8
x<-list(2,"a", "b", TRUE)
x[[2]]
class(x[[2]])

# Punto 9
x<-1:4
y<-2
v<-x+y
class(v)

# Punto 10
x<-c(3,4,5,6)

x[x>=6]<-0
x

x[x>6]<-0
x

x[x!=6]<-0
x

x[x%in%1:5]<-0
x

x[x<6]<-0
x

x[x==0]<6
x

x[x==0]<-6
x

x[x==6]<-0
x

x[x<6]==0
x

x[x>0]<-6
x

x[x<=5]<-0
x


# Punto 11
getwd()
#Directorio del proyecto
#setwd("C:/Users/Acer/Desktop/Cursos_Online/Coursera/Data_Science/R_Programming/R_programming")
#irectorio de al evaluación
setwd("C:/Users/Acer/Desktop/Cursos_Online/Coursera/Data_Science/R_Programming/Week 1/Evaluacion")
base<-read.csv("hw1_data.csv")
head(base)  
base[1:2, ] # extraer las dos primeras filas
dim(base) #número de filas y columnas
nrow(base) #número de filas
ncol(base) #numero de columnas
base[c(152,153),] #últimas dos filas

base[47, ] # extraer fila 47
ozono<-base[,1] #extraer la columna 1 
ozono
na<-is.na(ozono) #función lógica que determina si el balor es un NA o no
na
nas<-sum(is.na(ozono)) #Cuenta el total de NAS
nas
ozono1<-ozono[!na] #ozono sin na
ozono1
mean(ozono1) #media

# Punto 18
#Extract the subset of rows of the data frame where Ozone values are above 31 
#and Temp values are above 90. What is the mean of Solar.R in this subset?

base18<-subset(base, Ozone>31 & Temp>90)
base18
base18[,2]
mean(base18[,2]) #media de Solar.R

#Punto 19
#What is the mean of "Temp" when "Month" is equal to 6?

base19 <-subset(base, Month==6)
base19
base19[, 4]
mean(base19[,4]) #media de Temp

#Punto 20
#What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?

base20 <-subset(base, Month==5)
base20
base20[, 1]
max(base20[,1]) #media de Temp

ozono20<-base20[, 1] #extraer la columna 1 
ozono20
na<-is.na(ozono20) #función lógica que determina si el balor es un NA o no
na
nas<-sum(is.na(ozono20)) #Cuenta el total de NAS
nas
ozono200<-ozono20[!na] #ozono sin na
ozono200
max(ozono200) #valor maximo


# Importamos el paquete donde se encuentran nuestras tablas
library(nycflights13)
# Importamos dplyr, paquete para manipular datos
library(dplyr)

install.packages('datos')
library(datos)
library(tidyverse)
##Filtra los vuelos para mostrar únicamente los aviones que han realizado al menos cien viajes.
flights


df <- flights %>% 
  group_by(tailnum)
filter(n() > 100)
table(df$tailnum)

gb_tailnum <- group_by(df, tail)



##Combina datos::vehiculos y datos::comunes para encontrar los registros de los modelos más comunes.


##Encuentra las 48 horas (en el transcurso del año) que tengan los peores atrasos. Haz una referencia cruzada con la tabla clima. ¿Puedes observar patrones?
##¿Qué te indica anti_join(vuelos, aeropuertos, by = c("destino" = "codigo_aeropuerto"))? ¿Qué te indica anti_join(aeropuertos, vuelos, by = c("codigo_aeropuerto" = "destino"))?

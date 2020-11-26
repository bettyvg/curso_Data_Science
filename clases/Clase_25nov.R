# Importamos el paquete donde se encuentran nuestras tablas
library(nycflights13)
# Importamos dplyr, paquete para manipular datos
library(dplyr)

# Generamos una copia de flights en flights2, seleccionando solo las variables necesarias para visualizar el resultado más fácilmente
flights2 <- flights %>% select(year:day, hour, origin, dest, tailnum, carrier)

flights2 %>% 
  left_join(airlines)
#> Joining, by = "carrier"
#> # A tibble: 336,776 x 9
#>    year month   day  hour origin dest  tailnum carrier name                  
#>   <int> <int> <int> <dbl> <chr>  <chr> <chr>   <chr>   <chr>                 
#> 1  2013     1     1     5 EWR    IAH   N14228  UA      United Air Lines Inc. 
#> 2  2013     1     1     5 LGA    IAH   N24211  UA      United Air Lines Inc. 
#> 3  2013     1     1     5 JFK    MIA   N619AA  AA      American Airlines Inc.
#> 4  2013     1     1     5 JFK    BQN   N804JB  B6      JetBlue Airways       
#> 5  2013     1     1     6 LGA    ATL   N668DN  DL      Delta Air Lines Inc.  
#> # … with 336,771 more rows

weather
planes

flights2 %>% left_join(planes, by = 'tailnum')

flights
airports
df = left_join(flights, airports, by = c("origin" = "faa"))

#Tipos de joins

df1 <- tibble(x = c(1, 2), y = 2:1)
df2 <- tibble(x = c(3, 1), a = 10, b = "a")

df1
df2

df1 %>% inner_join(df2)
df1 %>% left_join(df2)
df1 %>% right_join(df2)
df1 %>% full_join(df2)


df1 <- tibble(x = c(1, 1, 2), y = 1:3)
df2 <- tibble(x = c(1, 1, 2), z = c("a", "b", "a"))


flights %>%  
  anti_join(planes, by = "tailnum") %>%  
  count(tailnum, sort = TRUE)

(df1 <- tibble(x = c(1, 1, 3, 4), y = 1:4))
(df2 <- tibble(x = c(1, 1, 2), z = c("a", "b", "a")))

df1 %>% nrow()
df1 %>% inner_join(df2, by = "x") %>% nrow()

df1 %>% semi_join(df2, by = "x") 
df1 %>% left_join(df2, by = "x") 

##Establecer Operaciones
(df1 <- tibble(x = 1:2, y = c(1L, 1L)))
(df2 <- tibble(x = 1:2, y = 1:2))

# Ejecuta las siguientes líneas y corrobora el resultado

intersect(df1, df2)
union(df1, df2)
setdiff(df1, df2)
setdiff(df2, df1)

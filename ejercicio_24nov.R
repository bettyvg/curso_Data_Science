library(readr)
e <- read_csv("curso_Data_Science/e.csv")
View(e)

resultado = group_by(e, branch_office)

count(resultado)



library(tidyverse)
getwd()
setwd("C:/Users/erdav/Documents/Rstudio/Vino_Discriminante")
data <- read.csv("winequality_red.csv")

class(data$quality)
data$quality <- as.character(data$quality)

summary(data)

# Vector de nombres de variables
nombres_variables <- c("fixed.acidity", "volatile.acidity", "citric.acid")

# Bucle for para generar y mostrar los histogramas
for (nombre in nombres_variables) {
  # Generar el histograma
  hist(data[[nombre]], main = nombre)
}


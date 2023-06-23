library(tidyverse)
getwd()
setwd("C:/Users/erdav/Documents/Rstudio/Vino_Discriminante")
data <- read.csv("winequality_red.csv")

head(data)
data$
summary(data)

class(data$quality)
data$quality <- as.character(data$quality)

colnames(data)

variables <- c("fixed.acidity", "volatile.acidity", "citric.acid", 
                       "residual.sugar", "chlorides", "free.sulfur.dioxide", 
                       "total.sulfur.dioxide", "density", "pH")

# Iteración para generar histogramas
for (variable in variables) {
  # Generar el histograma utilizando ggplot
  p <- ggplot(data, aes(x = .data[[variable]])) +
    geom_histogram(binwidth = 0.5, fill = "blue", color = "white") +
    labs(x = nombre, y = "Frequency") +
    ggtitle(variable)
  
  # Mostrar el histograma con el título
  print(p)
  
  # Pausa de 5 segundos entre cada histograma
  Sys.sleep(2)
}



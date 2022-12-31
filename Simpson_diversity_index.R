library(vegan)
diversity(MLST,index = "simpson")
simpson <- diversity(MLST, "simpson")
simpson
hist(simpson)

#MLST debe ser reemplazado con el nombre del archivo input
#hist(simpson) se utiliza en caso de querer hacer un histograma del índice
#de simpson

#tutorial disponible en: https://bioinfo4all.wordpress.com/2021/01/31/tutorial-6-how-to-do-principal-component-analysis-pca-in-r/
library("factoextra")
library("FactoMineR")
data <- read.csv("/home/isaias/KPEC/pca_v2.csv", row.names = 1)
pca.data <- PCA(data[,-1], scale.unit = TRUE, graph = FALSE)
fviz_eig(pca.data, addlabels = TRUE, ylim = c(0, 70))
fviz_pca_var(pca.data, col.var = "cos2",
             gradient.cols = c("#FFCC00", "#CC9933", "#660033", "#330033"),
             repel = TRUE) 
pca.data <- PCA(t(data[,-1]), scale.unit = TRUE, graph = FALSE)
 fviz_pca_ind(pca.data, col.ind = "cos2", 
             gradient.cols = c("#FFCC00", "#CC9933", "#660033", "#330033"), 
             repel = TRUE)
library(ggpubr) 
a <- fviz_pca_ind(pca.data, col.ind = "cos2", 
                  gradient.cols = c("#FFCC00", "#CC9933", "#660033", "#330033"), 
                  repel = TRUE)
ggpar(a,
      title = "Principal Component Analysis",
      xlab = "PC1", ylab = "PC2",
      legend.title = "Cos2", legend.position = "top",
      ggtheme = theme_minimal())
pca.data <- PCA(data[,-1], scale.unit = TRUE,ncp = 2, graph = FALSE)
data$PRODUCT <- as.factor(data$PRODUCT)
library(RColorBrewer)
nb.cols <- 5
mycolors <- colorRampPalette(brewer.pal(5, "Set2"))(nb.cols)
a <- fviz_pca_ind(pca.data, col.ind = data$PRODUCT,
                  palette = mycolors, addEllipses = TRUE)
ggpar(a,
      title = "Principal Component Analysis",
      xlab = "PC1", ylab = "PC2",
      legend.title = "KPC genotype", legend.position = "top",
      ggtheme = theme_minimal())


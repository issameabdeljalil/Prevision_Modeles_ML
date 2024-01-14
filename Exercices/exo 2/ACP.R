library(FactoMineR)
library(MASS)


chemin_fichier <- "../donnees/voitures"
voitures <- read.table(chemin_fichier, header=T)
print(voitures)

donnees_centrees_reduites <- scale(voitures)
print(donnees_centrees_reduites)

res.pca <- PCA(donnees_centrees_reduites)
summary(res.pca)

plot(res.pca,choix="ind", cex=0.7)
plot(res.pca,choix="var", cex=0.7)

res.pca$ind$cos2[,1:2]



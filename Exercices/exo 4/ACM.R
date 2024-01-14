library(FactoMineR)
library(MASS)
library(dplyr)

chemin_fichier <- "../donnees/chiens"
chiens <- read.table(chemin_fichier, header=T)
print(chiens)

chiens <- data.frame(lapply(chiens, factor))
chiens.mca <- MCA(chiens, graph = TRUE, quali.sup=7)
plot(chiens.mca)
plot(chiens.mca,select="cos2 20", selectMod="cos2 8")
summary(chiens.mca, nbelements = Inf)

chiens <- read.table(chemin_fichier, header=T)
chiens$Indice <- seq_len(nrow(chiens))
print(chiens)


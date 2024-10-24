# Comprovem si el paquet "BiocManager" està disponible al sistema
# La funció requireNamespace() retorna TRUE si el paquet està instal·lat, i FALSE si no ho està
# El paràmetre 'quietly = TRUE' evita mostrar missatges durant la comprovació
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  # Si el paquet "BiocManager" no està instal·lat, el descarreguem i instal·lem des de CRAN
  install.packages("BiocManager")
}

# Un cop tenim "BiocManager" instal·lat, utilitzem la seva funció per instal·lar el paquet "SummarizedExperiment"
# "SummarizedExperiment" és un paquet del repositori Bioconductor, que s'utilitza per treballar amb dades genòmiques estructurades
BiocManager::install("SummarizedExperiment")

library(SummarizedExperiment)

# Carregar les dades des d'un fitxer CSV
data <- read.csv("C:/Users/tonim/Documents/PAC1/human_cachexia.csv", row.names = 1)

# Matriu de dades (valors de metabòlits) 
# Excloem les primeres dues columnes, que són identificadors i informació clínica
assay_data <- as.matrix(data[, -c(1,2)])

# Metadades de les files (informació sobre els pacients)
row_metadata <- data.frame(
  Muscle_loss = data$Muscle.loss,  # Indicació de pèrdua de massa muscular
  row.names = rownames(data)  # Assignem les files del dataframe a les metadades
)

# Metadades de les columnes (nom dels metabòlits)
col_metadata <- data.frame(
  Metabolite = colnames(assay_data)  # Assignem els noms dels metabòlits com a metadades de les columnes
)

# Crear l'objecte SummarizedExperiment
se <- SummarizedExperiment(
  assays = list(counts = assay_data),  # Dades d'expressió o valors dels metabòlits
  rowData = row_metadata,  # Metadades dels pacients
  colData = col_metadata  # Metadades dels metabòlits
)

se  # Mostrar l'objecte creat
save (se, file = "C:/Users/tonim/Documents/PAC1/PAC1.Rda")

# 1. Resum estadístic de les dades numèriques
summary(data[, -c(1,2)])  # Excloem les columnes 'Patient ID' i 'Muscle loss' per fer el resum

# 2. Comprovació de valors mancats
missing_values <- sum(is.na(data))  # Comptar el nombre de valors mancats en tot el conjunt de dades
print(paste("Total de valors mancats:", missing_values))

# Proporció de valors mancats per cada metabòlit
missing_proportions <- colSums(is.na(data)) / nrow(data)  # Proporció de NA's en cada columna
print("Proporció de valors mancats per metabòlit:")
print(missing_proportions)

# 3. Visualització de la distribució dels metabòlits (Boxplot)
# Crear un boxplot per veure la distribució dels valors dels metabòlits
boxplot(data[, -c(1,2)], main = "Distribució dels metabòlits", las = 2)

# 4. Comparació entre pacients cachectics i no cachectics
# Separen els pacients segons la seva condició de pèrdua de massa muscular (cachexia)
cachectic <- data[data$Muscle.loss == "cachexic", -c(1,2)]  # Dades de pacients cachectics
non_cachectic <- data[data$Muscle.loss != "cachexic", -c(1,2)]  # Dades de pacients no cachectics

# Calcular la mitjana dels metabòlits per a cada grup
cachectic_mean <- colMeans(cachectic, na.rm = TRUE)
non_cachectic_mean <- colMeans(non_cachectic, na.rm = TRUE)

# Crear un dataframe per comparar les mitjanes
comparison <- data.frame(Cachectic = cachectic_mean, Non_cachectic = non_cachectic_mean)
print("Comparació entre pacients cachectics i no cachectics:")
print(comparison)

# Gràfic de barres per a la comparació de les mitjanes dels metabòlits
barplot(t(as.matrix(comparison)), beside = TRUE, col = c("red", "blue"), 
        legend = TRUE, main = "Comparació de metabòlits")

# 5. Correlacions entre metabòlits
# Calcular la matriu de correlacions entre els diferents metabòlits
correlations <- cor(data[, -c(1,2)], use = "complete.obs")

# Crear un mapa de calor per visualitzar les correlacions
heatmap(correlations, main = "Mapa de calor de les correlacions entre metabòlits")

# 6. Anàlisi de components principals (PCA)
# Aplicar PCA a les dades dels metabòlits
pca <- prcomp(data[, -c(1,2)], scale. = TRUE)

# Gràfic dels primers dos components principals
plot(pca$x[, 1:2], col = ifelse(data$Muscle.loss == "cachexic", "red", "blue"), 
     main = "PCA dels pacients", xlab = "PC1", ylab = "PC2")
legend("topright", legend = c("Cachexic", "No cachexic"), col = c("red", "blue"), pch = 1)

# 7. Diferències estadístiques (t-test)
# Aplicar un t-test per a cada metabòlit per comparar els grups cachectics i no cachectics
t_tests <- apply(data[, -c(1,2)], 2, function(metabolite) t.test(metabolite ~ data$Muscle.loss)$p.value)

# Identificar els metabòlits amb diferències significatives (p-valor < 0.05)
significant_metabolites <- which(t_tests < 0.05)
print("Metabòlits significatius:")
print(names(significant_metabolites))




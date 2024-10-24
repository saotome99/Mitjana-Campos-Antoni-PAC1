library(SummarizedExperiment)
data <- read.csv("C:/Users/tonim/Documents/PAC1/human_cachexia.csv", row.names = 1)

# Matriu de dades (valors de metabòlits)
assay_data <- as.matrix(data[, -c(1,2)])

# Metadades de les files (informació sobre els pacients)
row_metadata <- data.frame(
  Muscle_loss = data$Muscle.loss,
  row.names = rownames(data)
)

# Metadades de les columnes (nom dels metabòlits)
col_metadata <- data.frame(
  Metabolite = colnames(assay_data)
)

se <- SummarizedExperiment(
  assays = list(counts = assay_data),
  rowData = row_metadata,
  colData = col_metadata
)

se

# 1. Resum estadístic de les dades numèriques
summary(data[, -c(1,2)])  # Excloem les columnes 'Patient ID' i 'Muscle loss'

# 2. Comprovació de valors mancats
missing_values <- sum(is.na(data))
print(paste("Total de valors mancats:", missing_values))

# Proporció de valors mancats per metabòlit
missing_proportions <- colSums(is.na(data)) / nrow(data)
print("Proporció de valors mancats per metabòlit:")
print(missing_proportions)

# 3. Visualització de la distribució dels metabòlits (Boxplot)
boxplot(data[, -c(1,2)], main = "Distribució dels metabòlits", las = 2)

# 4. Comparació entre pacients cachectics i no cachectics
cachectic <- data[data$Muscle.loss == "cachexic", -c(1,2)]
non_cachectic <- data[data$Muscle.loss != "cachexic", -c(1,2)]

cachectic_mean <- colMeans(cachectic, na.rm = TRUE)
non_cachectic_mean <- colMeans(non_cachectic, na.rm = TRUE)

comparison <- data.frame(Cachectic = cachectic_mean, Non_cachectic = non_cachectic_mean)
print("Comparació entre pacients cachectics i no cachectics:")
print(comparison)

# Gràfic de comparació
barplot(t(as.matrix(comparison)), beside = TRUE, col = c("red", "blue"), 
        legend = TRUE, main = "Comparació de metabòlits")

# 5. Correlacions entre metabòlits
correlations <- cor(data[, -c(1,2)], use = "complete.obs")
heatmap(correlations, main = "Mapa de calor de les correlacions entre metabòlits")

# 6. Anàlisi de components principals (PCA)
pca <- prcomp(data[, -c(1,2)], scale. = TRUE)
plot(pca$x[, 1:2], col = ifelse(data$Muscle.loss == "cachexic", "red", "blue"), 
     main = "PCA dels pacients", xlab = "PC1", ylab = "PC2")
legend("topright", legend = c("Cachexic", "No cachexic"), col = c("red", "blue"), pch = 1)

# 7. Diferències estadístiques (t-test)
t_tests <- apply(data[, -c(1,2)], 2, function(metabolite) t.test(metabolite ~ data$Muscle.loss)$p.value)
significant_metabolites <- which(t_tests < 0.05)
print("Metabòlits significatius:")
print(names(significant_metabolites))



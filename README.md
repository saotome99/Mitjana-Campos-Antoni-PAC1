# Mitjana-Campos-Antoni-PAC1 - Exploració de dades metabolòmiques
# Anàlisi de Metabolòmica en Caquèxia Humana

Aquest projecte analitza les dades metabolòmiques de pacients amb caquèxia en comparació amb un grup control, identificant diferències en perfils metabòlics. L'objectiu és explorar els canvis metabòlics i identificar possibles biomarcadors de la síndrome.

## Contingut del Projecte
- **Codi R** per al processament de dades, creació d'objectes `SummarizedExperiment`, anàlisi PCA, visualització de heatmaps i proves estadístiques.
- **Dataset:** `human_cachexia.csv`, amb informació de pacients amb i sense caquèxia.
- **Resultats:** Visualitzacions dels patrons metabòlics, identificació de metabòlits diferencials i interpretació de vies metabòliques afectades.

## Estructura
1. **Càrrega de dades**: Importació i preprocessament de les dades per crear una estructura estandarditzada.
2. **Anàlisi Exploratori**: PCA i heatmaps per visualitzar diferències metabòliques.
3. **Anàlisi Estadística**: Aplicació de proves amb correcció FDR per trobar metabòlits significatius.
4. **Interpretació**: Identificació de vies metabòliques rellevants per a la caquèxia.

## Requeriments
- **R** amb els paquets: `SummarizedExperiment`, `ggplot2`, `pheatmap`, `readxl`.
  
## Executar l'Anàlisi
1. Carrega el dataset `human_cachexia.csv`.
2. Executa el codi proporcionat en `PAC1.Rmd`.
3. Revisa els resultats en visualitzacions i estadístiques.

## Contribució
Aquest projecte contribueix a la comprensió de les alteracions metabòliques en caquèxia i ofereix una base per a futurs estudis sobre biomarcadors i teràpies.

## Contacte
Per a preguntes, contacta a [amitjanac@uoc.edu](mailto:amitjanac@uoc.edu).

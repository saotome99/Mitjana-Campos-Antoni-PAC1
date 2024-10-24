# Metadades del Dataset - Cachexia

Aquest document descriu les metadades del dataset utilitzat per a l'anàlisi de pacients amb pèrdua muscular (cachexia). El dataset conté informació metabòlica de pacients, amb concentracions de diversos metabòlits i una classificació dels pacients segons si tenen o no pèrdua muscular.

<h2>Estructura del Dataset</h2>

El dataset <strong>human_cachexia.csv</strong> conté un conjunt de dades que inclou:

<ul>
    <li><strong>Files (n = XX)</strong>: Cada fila representa un pacient.</li>
    <li><strong>Columnes (n = 65)</strong>: Cada columna representa una variable, incloent l'identificador del pacient, l'estat de pèrdua muscular i les concentracions de diferents metabòlits.</li>
</ul>

<h2>Variables Incloses</h2>

A continuació es descriuen les principals variables incloses en el dataset:

<table border="1" cellpadding="5" cellspacing="0">
    <tr>
        <th>Variable</th>
        <th>Descripció</th>
        <th>Tipus de Dada</th>
        <th>Exemple</th>
    </tr>
    <tr>
        <td><strong>Patient ID</strong></td>
        <td>Identificador únic per a cada pacient.</td>
        <td>Cadena de text (character)</td>
        <td>PIF_178, NETL_005_V1</td>
    </tr>
    <tr>
        <td><strong>Muscle loss</strong></td>
        <td>Classificació dels pacients segons l'estat de pèrdua muscular.</td>
        <td>Categoria (factor)</td>
        <td>cachexic, non-cachexic</td>
    </tr>
    <tr>
        <td><strong>Metabòlits</strong></td>
        <td>Concentració dels diferents metabòlits mesurats en cada pacient.</td>
        <td>Valor numèric (numeric)</td>
        <td>40.85, 65.37</td>
    </tr>
</table>

<h2>Descripció dels Metabòlits</h2>

Els metabòlits representen compostos químics mesurats en els pacients. Els valors numèrics indiquen les concentracions dels compostos en una unitat determinada. A continuació, es descriuen alguns exemples de metabòlits:

<ul>
    <li><strong>1,6-Anhydro-beta-D-glucose</strong>: Implicat en la degradació dels carbohidrats.</li>
    <li><strong>2-Aminobutyrate</strong>: Compost que participa en el metabolisme d'aminoàcids.</li>
    <li><strong>Tryptophan</strong>: Aminoàcid essencial important en la síntesi de proteïnes i la neurotransmissió.</li>
    <li><strong>Valine</strong>: Aminoàcid de cadena ramificada involucrat en el metabolisme muscular.</li>
</ul>

<h2>Notes Addicionals</h2>

<div style="background-color: #f9f9f9; padding: 10px; border-left: 5px solid #0055a5;">
    <p><strong>Valors mancats</strong>: Algunes entrades del dataset poden contenir valors mancats (NA). Aquests valors s'han de tractar adequadament abans de l'anàlisi.</p>
    <p><strong>Nombres de mostres</strong>: El dataset inclou mostres de pacients en diferents estats clínics, proporcionant context a les concentracions metabòliques.</p>
</div>

<h2>Font de les Dades</h2>

Les dades provenen d'un estudi metabòlic realitzat amb pacients afectats per la pèrdua muscular (cachexia). Aquest dataset forma part d'un estudi ampli sobre el metabolisme i les condicions relacionades amb la cachexia.


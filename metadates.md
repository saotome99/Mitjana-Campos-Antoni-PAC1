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
    <!-- Comença la llista de metabòlits -->
    <tr>
        <td><strong>1,6-Anhydro-beta-D-glucose</strong></td>
        <td>Concentració del metabòlit 1,6-Anhydro-beta-D-glucose.</td>
        <td>Valor numèric (numeric)</td>
        <td>40.85, 65.37</td>
    </tr>
    <tr>
        <td><strong>1-Methylnicotinamide</strong></td>
        <td>Concentració del metabòlit 1-Methylnicotinamide.</td>
        <td>Valor numèric (numeric)</td>
        <td>65.37, 340.36</td>
    </tr>
    <tr>
        <td><strong>2-Aminobutyrate</strong></td>
        <td>Concentració del metabòlit 2-Aminobutyrate.</td>
        <td>Valor numèric (numeric)</td>
        <td>18.73, 24.29</td>
    </tr>
    <tr>
        <td><strong>2-Hydroxyisobutyrate</strong></td>
        <td>Concentració del metabòlit 2-Hydroxyisobutyrate.</td>
        <td>Valor numèric (numeric)</td>
        <td>26.05, 41.68</td>
    </tr>
    <tr>
        <td><strong>2-Oxoglutarate</strong></td>
        <td>Concentració del metabòlit 2-Oxoglutarate.</td>
        <td>Valor numèric (numeric)</td>
        <td>71.52, 67.36</td>
    </tr>
    <tr>
        <td><strong>3-Aminoisobutyrate</strong></td>
        <td>Concentració del metabòlit 3-Aminoisobutyrate.</td>
        <td>Valor numèric (numeric)</td>
        <td>1480.30, 116.75</td>
    </tr>
    <tr>
        <td><strong>3-Hydroxybutyrate</strong></td>
        <td>Concentració del metabòlit 3-Hydroxybutyrate.</td>
        <td>Valor numèric (numeric)</td>
        <td>56.83, 43.82</td>
    </tr>
    <tr>
        <td><strong>3-Hydroxyisovalerate</strong></td>
        <td>Concentració del metabòlit 3-Hydroxyisovalerate.</td>
        <td>Valor numèric (numeric)</td>
        <td>10.07, 79.84</td>
    </tr>
    <tr>
        <td><strong>Tryptophan</strong></td>
        <td>Concentració del metabòlit Tryptophan.</td>
        <td>Valor numèric (numeric)</td>
        <td>259.82, 83.10</td>
    </tr>
    <tr>
        <td><strong>Tyrosine</strong></td>
        <td>Concentració del metabòlit Tyrosine.</td>
        <td>Valor numèric (numeric)</td>
        <td>290.03, 167.34</td>
    </tr>
    <tr>
        <td><strong>Uracil</strong></td>
        <td>Concentració del metabòlit Uracil.</td>
        <td>Valor numèric (numeric)</td>
        <td>111.05, 46.99</td>
    </tr>
    <tr>
        <td><strong>Valine</strong></td>
        <td>Concentració del metabòlit Valine.</td>
        <td>Valor numèric (numeric)</td>
        <td>86.49, 109.95</td>
    </tr>
    <tr>
        <td><strong>Xylose</strong></td>
        <td>Concentració del metabòlit Xylose.</td>
        <td>Valor numèric (numeric)</td>
        <td>72.24, 192.48</td>
    </tr>
    <tr>
        <td><strong>cis-Aconitate</strong></td>
        <td>Concentració del metabòlit cis-Aconitate.</td>
        <td>Valor numèric (numeric)</td>
        <td>237.46, 333.62</td>
    </tr>
    <tr>
        <td><strong>myo-Inositol</strong></td>
        <td>Concentració del metabòlit myo-Inositol.</td>
        <td>Valor numèric (numeric)</td>
        <td>135.64, 376.15</td>
    </tr>
    <tr>
        <td><strong>trans-Aconitate</strong></td>
        <td>Concentració del metabòlit trans-Aconitate.</td>
        <td>Valor numèric (numeric)</td>
        <td>51.94, 217.02</td>
    </tr>
    <tr>
        <td><strong>pi-Methylhistidine</strong></td>
        <td>Concentració del metabòlit pi-Methylhistidine.</td>
        <td>Valor numèric (numeric)</td>
        <td>157.59, 307.97</td>
    </tr>
    <tr>
        <td><strong>tau-Methylhistidine</strong></td>
        <td>Concentració del metabòlit tau-Methylhistidine.</td>
        <td>Valor numèric (numeric)</td>
        <td>160.77, 130.32</td>
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

<div style="background-color: #f9f9f9; padding: 10px; border-left: 5px solid #

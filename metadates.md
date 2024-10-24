<!DOCTYPE html>
<html lang="ca">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Metadades del Dataset - Cachexia</title>
    <style>
        /* Estils globals */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
            line-height: 1.6;
        }
        header {
            background-color: #0055a5;
            color: white;
            padding: 20px;
            text-align: center;
        }
        main {
            padding: 20px;
            max-width: 900px;
            margin: 0 auto;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        h1, h2, h3 {
            color: #0055a5;
        }
        h1 {
            margin-top: 0;
        }
        p {
            font-size: 1.1rem;
            margin-bottom: 15px;
        }
        ul {
            list-style-type: disc;
            margin-left: 20px;
        }
        li {
            margin-bottom: 10px;
        }
        /* Estils per taules */
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #0055a5;
            color: white;
        }
        /* Estil per seccions destacades */
        .highlight {
            background-color: #eef5ff;
            padding: 15px;
            border-left: 5px solid #0055a5;
            margin-bottom: 20px;
        }
        footer {
            text-align: center;
            padding: 10px;
            background-color: #0055a5;
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <header>
        <h1>Metadades del Dataset - Cachexia</h1>
    </header>

    <main>
        <section>
            <h2>Descripció General</h2>
            <p>
                Aquest document descriu les metadades del dataset utilitzat per a l'anàlisi de pacients amb pèrdua muscular (cachexia).
                El dataset conté informació metabòlica de pacients, amb concentracions de diversos metabòlits i una classificació dels pacients segons si tenen o no pèrdua muscular.
            </p>
        </section>

        <section>
            <h2>Estructura del Dataset</h2>
            <p>
                El dataset <strong>human_cachexia.csv</strong> conté un conjunt de dades que inclou:
            </p>
            <ul>
                <li><strong>Files (n = XX)</strong>: Cada fila representa un pacient.</li>
                <li><strong>Columnes (n = 65)</strong>: Cada columna representa una variable, incloent l'identificador del pacient, l'estat de pèrdua muscular i les concentracions de diferents metabòlits.</li>
            </ul>
        </section>

        <section>
            <h2>Variables Incloses</h2>
            <p>
                A continuació es descriuen les principals variables incloses en el dataset:
            </p>
            <table>
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
        </section>

        <section>
            <h2>Descripció dels Metabòlits</h2>
            <p>
                Els metabòlits representen compostos químics mesurats en els pacients. Els valors numèrics indiquen les concentracions dels compostos en una unitat determinada. A continuació, es descriuen alguns exemples de metabòlits:
            </p>
            <ul>
                <li><strong>1,6-Anhydro-beta-D-glucose</strong>: Implicat en la degradació dels carbohidrats.</li>
                <li><strong>2-Aminobutyrate</strong>: Compost que participa en el metabolisme d'aminoàcids.</li>
                <li><strong>Tryptophan</strong>: Aminoàcid essencial important en la síntesi de proteïnes i la neurotransmissió.</li>
                <li><strong>Valine</strong>: Aminoàcid de cadena ramificada involucrat en el metabolisme muscular.</li>
            </ul>
        </section>

        <section>
            <h2>Notes Addicionals</h2>
            <div class="highlight">
                <p><strong>Valors mancats</strong>: Algunes entrades del dataset poden contenir valors mancats (NA). Aquests valors s'han de tractar adequadament abans de l'anàlisi.</p>
                <p><strong>Nombres de mostres</strong>: El dataset inclou mostres de pacients en diferents estats clínics, proporcionant context a les concentracions metabòliques.</p>
            </div>
        </section>

        <section>
            <h2>Font de les Dades</h2>
            <p>
                Les dades provenen d'un estudi metabòlic realitzat amb pacients afectats per la pèrdua muscular (cachexia). Aquest dataset forma part d'un estudi ampli sobre el metabolisme i les condicions relacionades amb la cachexia.
            </p>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 - Repositori PEC1: Sanchez-Pla-Alex-PEC1</p>
    </footer>

</body>
</html>





## Caratteristiche dei Requisiti Efficaci

Per essere utili, i requisiti dovrebbero possedere alcune qualità fondamentali:

*   **Chiarezza (Non Ambiguità):** È cruciale esprimere i requisiti in modo univoco. L'ambiguità può portare a interpretazioni divergenti tra sviluppatori, tester e clienti, causando errori e malintesi. Ad esempio, un requisito che menziona "statistiche" deve specificare se si riferisce alle statistiche di un personaggio in un gioco o alle statistiche di utilizzo dell'applicazione stessa.
*   **Completezza:** I requisiti dovrebbero includere tutte le informazioni necessarie per la loro implementazione.
*   **Consistenza:** Non dovrebbero esserci conflitti o contraddizioni tra i diversi requisiti specificati.

Nella pratica, data la complessità dei sistemi moderni, raggiungere la completezza e la consistenza assolute è estremamente difficile, ma rimangono obiettivi importanti a cui tendere.

## Approfondimento sui Requisiti Non Funzionali (NFR)

I requisiti non funzionali meritano particolare attenzione per il loro impatto pervasivo:

*   **Impatto Architettonico:** Gli NFR influenzano spesso l'architettura generale del sistema. Ad esempio, stringenti requisiti di performance potrebbero imporre un'architettura che minimizzi la comunicazione tra componenti.
*   **Generazione di Requisiti Funzionali:** Un singolo NFR (es. sicurezza) può generare numerosi requisiti funzionali correlati che definiscono servizi specifici necessari per soddisfarlo (es. autenticazione, logging, crittografia).
*   **Restrizioni:** Possono limitare o vincolare altri requisiti.

Gli NFR possono essere classificati in:

*   **Requisiti di Prodotto:** Riguardano il comportamento osservabile del prodotto (es. velocità, affidabilità, usabilità, efficienza, portabilità).
    *   *Esempio (Obiettivo generico):* Il sistema dovrebbe essere facile da usare e minimizzare gli errori utente.
    *   *Esempio (NFR misurabile):* Gli utenti devono essere in grado di utilizzare le funzionalità X, Y, Z dopo aver seguito un tutorial di 30 minuti. Il numero di errori critici commessi da utenti esperti non deve superare 2 per ora di utilizzo.
*   **Requisiti Organizzativi:** Derivano da politiche, procedure o standard aziendali (es. standard di processo, linguaggi di programmazione obbligatori, scadenze di consegna).
*   **Requisiti Esterni:** Nascono da fattori esterni al sistema e all'organizzazione (es. normative sulla privacy (GDPR), leggi sull'accessibilità, requisiti di interoperabilità con altri sistemi).

## Il Processo di Ingegnerizzazione dei Requisiti

L'ingegnerizzazione dei requisiti non è un'attività lineare, ma un **processo iterativo** le cui attività specifiche possono variare a seconda del dominio applicativo, dell'organizzazione e della metodologia di sviluppo adottata. Tuttavia, si possono identificare delle attività generiche fondamentali, spesso intrecciate tra loro:

1.  **Elicitazione (o Scoperta) dei Requisiti:** Raccogliere le esigenze e i vincoli dagli stakeholder.
2.  **Analisi dei Requisiti:** Verificare la consistenza, la completezza e la fattibilità dei requisiti elicitati.
3.  **Specifica (o Documentazione) dei Requisiti:** Documentare i requisiti in modo chiaro e strutturato.
4.  **Validazione dei Requisiti:** Assicurarsi che i requisiti documentati riflettano effettivamente le esigenze del cliente e siano realizzabili.
5.  **Gestione dei Requisiti:** Gestire i cambiamenti ai requisiti durante tutto il ciclo di vita del progetto.

## Elicitazione e Analisi dei Requisiti

Questa fase prevede che lo staff tecnico collabori attivamente con il cliente e gli altri **stakeholder** per comprendere a fondo il dominio applicativo, identificare i servizi necessari, le performance attese e i vincoli operativi.

### Stakeholder

Uno stakeholder (o attore) è qualsiasi persona o organizzazione le cui operazioni sono influenzate dal sistema o che ha un interesse legittimo nel suo sviluppo e funzionamento. Esempi tipici includono:

*   Utenti finali
*   Manager del cliente
*   Amministratori di sistema
*   Ingegneri di manutenzione
*   Esperti di dominio
*   Regolatori (enti normativi)
*   Sviluppatori stessi

### Sfide dell'Elicitazione

Il processo di elicitazione è complesso a causa di vari fattori:

*   Gli stakeholder spesso **non sanno esattamente cosa vogliono** o faticano ad articolarlo.
*   Esprimono i requisiti nel **proprio linguaggio**, che può essere ambiguo o specifico del loro ruolo.
*   Stakeholder diversi possono avere **requisiti conflittuali** o priorità diverse.
*   **Fattori organizzativi e politici** possono influenzare silenziosamente i requisiti.
*   I requisiti **cambiano** durante il processo, man mano che la comprensione aumenta o emergono nuovi stakeholder o cambiamenti nel business.

### Fasi dell'Elicitazione

Un modello comune rappresenta l'elicitazione come un processo a spirale con le seguenti fasi:

1.  **Scoperta dei requisiti:** Interagire con gli stakeholder per raccogliere informazioni preliminari.
2.  **Classificazione ed organizzazione:** Raggruppare i requisiti correlati in cluster coerenti.
3.  **Prioritizzazione e negoziazione:** Stabilire le priorità e risolvere i conflitti tra requisiti.
4.  **Specifica:** Documentare i requisiti concordati (questa fase si sovrappone all'attività generale di Specifica).

### Tecniche di Elicitazione

Esistono diverse tecniche per supportare la scoperta e l'analisi dei requisiti:

*   **Interviste:** Conversazioni formali o informali con gli stakeholder.
    *   *Chiuse:* Basate su domande predefinite.
    *   *Aperte:* Esplorative, senza un set fisso di domande.
    *   *Efficacia:* Richiedono mente aperta, ascolto attivo, capacità di stimolare la discussione (anche tramite prototipi semplici), ma possono essere limitate dalla terminologia tecnica o dalla conoscenza implicita del dominio. Non sempre adatte a comprendere requisiti di dominio profondi.
*   **Etnografia:** Osservare gli stakeholder nel loro ambiente di lavoro naturale per comprendere i flussi operativi reali, le interazioni sociali e i fattori organizzativi che potrebbero non emergere dalle interviste. Utile per scoprire requisiti impliciti derivati da come le persone lavorano effettivamente, ma meno efficace per identificare funzionalità completamente nuove. Può essere combinata con la prototipazione (etnografia focalizzata).
*   **Scenari e User Stories:** Descrizioni concrete di come il sistema verrà utilizzato per svolgere compiti specifici.
    *   *User Story (comune in Agile):* Breve descrizione di una funzionalità dal punto di vista dell'utente ("Come [tipo di utente], voglio [obiettivo] così che [beneficio]").
    *   *Scenario (più dettagliato):* Descrive una sequenza di interazioni, includendo: situazione iniziale, flusso normale degli eventi, possibili eccezioni/errori, attività concorrenti e stato finale. Aiutano gli stakeholder a comprendere e commentare l'uso pratico del sistema.

## Specifica dei Requisiti

È la fase in cui i requisiti elicitati, analizzati e concordati vengono documentati formalmente.

### Linguaggio Naturale vs. Approcci Strutturati

*   **Linguaggio Naturale:** È il metodo più comune per scrivere i requisiti utente, grazie alla sua espressività e universalità. Tuttavia, presenta svantaggi significativi:
    *   *Mancanza di chiarezza:* Può essere intrinsecamente ambiguo.
    *   *Confusione:* Requisiti funzionali, non funzionali e di dominio possono mescolarsi.
    *   *Amalgama:* Più requisiti possono essere espressi in un'unica frase complessa.
    *   *Buone pratiche:* Usare formati standard, linguaggio consistente ("deve" vs "dovrebbe"), evidenziazioni, evitare gergo tecnico non necessario, spiegare il "perché" di un requisito.
*   **Linguaggio Naturale Strutturato:** Utilizza template predefiniti per standardizzare la descrizione di ciascun requisito, riducendo l'ambiguità e migliorando l'organizzazione, pur mantenendo una certa leggibilità. Può risultare rigido in alcuni casi.
    *   *Esempio di struttura:* Descrizione funzione/servizio, Input/Pre-condizioni, Output/Post-condizioni, Azioni/Flusso dati.
*   **Notazioni Grafiche (es. UML):** Diagrammi come quelli dei Casi d'Uso (Use Case) o di Sequenza possono integrare o sostituire parzialmente le descrizioni testuali per specificare le interazioni e i comportamenti. I **Casi d'Uso** identificano gli attori e le interazioni principali con il sistema; un set completo dovrebbe coprire tutte le interazioni significative.

### Il Documento dei Requisiti (Software Requirements Specification - SRS)

È il documento ufficiale che elenca tutti i requisiti che il sistema deve soddisfare.

*   **Scopo:** Funge da riferimento per sviluppatori, tester, manager e clienti. Definisce *cosa* il sistema deve fare, non *come* (anche se il confine non è sempre netto).
*   **Utilizzatori:**
    *   *Clienti:* Per verificare che le loro esigenze siano state comprese.
    *   *Manager:* Per la pianificazione e il monitoraggio.
    *   *Ingegneri di sistema (Sviluppatori):* Per comprendere cosa implementare.
    *   *Ingegneri di test:* Per derivare i casi di test di validazione.
    *   *Ingegneri di manutenzione:* Per comprendere il sistema e l'impatto delle modifiche future.
*   **Struttura Tipica:**
    *   *Prefazione:* Destinatari, storico versioni, sommario modifiche.
    *   *Introduzione:* Necessità del sistema, funzioni principali, contesto operativo, obiettivi di business.
    *   *Glossario:* Definizione dei termini tecnici o specifici del dominio.
    *   *Specifica dei Requisiti Utente:* Descrizione ad alto livello dei servizi dal punto di vista dell'utente.
    *   *Modelli di Sistema (Opzionale):* Diagrammi UML (contesto, casi d'uso, ecc.) o altri modelli.
    *   *Specifica dei Requisiti di Sistema:* Descrizione dettagliata dei requisiti funzionali e non funzionali, interfacce esterne.
    *   *Evoluzione del Sistema (Opzionale):* Assunti fondamentali, cambiamenti futuri previsti.
    *   *Appendici:* Informazioni dettagliate (es. specifiche hardware/database, formati dati).
    *   *Indice.*

## Validazione dei Requisiti

È l'attività volta a verificare che il documento dei requisiti sia una descrizione accettabile del sistema da implementare e che soddisfi le reali esigenze degli stakeholder. Tecniche comuni includono:

*   **Review dei Requisiti:** Analisi sistematica del documento da parte di un team composto da clienti, utenti e sviluppatori per individuare errori, omissioni, ambiguità e conflitti.
*   **Prototipazione:** Sviluppare un modello eseguibile (prototipo) di parti del sistema per permettere agli utenti di sperimentare le funzionalità e fornire feedback sui requisiti.
*   **Generazione di Casi di Test:** Derivare casi di test direttamente dai requisiti. Se un requisito è difficile o impossibile da testare, è probabile che sia mal specificato (es. troppo vago o ambiguo).

## Gestione dei Requisiti

I requisiti non sono statici; cambiano inevitabilmente durante e dopo lo sviluppo del sistema.

### Ragioni del Cambiamento

*   Evoluzione dell'**ambiente di business** o tecnico (nuovo hardware, normative).
*   Migliore **comprensione** del problema da parte del cliente o degli sviluppatori.
*   **Priorità** organizzative o di budget che cambiano.
*   **Conflitti** tra esigenze di diversi stakeholder (es. chi paga vs chi usa, utenti eterogenei).

### Processo di Gestione del Cambiamento

La gestione dei requisiti è il processo di gestione di questi cambiamenti in modo controllato. Include:

1.  **Identificazione univoca** di ciascun requisito.
2.  **Tracciabilità:** Mantenere collegamenti tra requisiti dipendenti, e tra requisiti, design, codice e test, per valutare l'impatto delle modifiche.
3.  **Processo formale di change request:** Un meccanismo per proporre, analizzare e approvare/rifiutare le modifiche.
    *   *Analisi del problema/proposta:* Valutare la validità e la necessità del cambiamento richiesto.
    *   *Analisi dell'impatto e dei costi:* Stimare l'effetto della modifica sul sistema, sulla pianificazione e sui costi, usando le informazioni di tracciabilità.
    *   *Implementazione del cambiamento:* Se approvato, modificare il documento dei requisiti e, di conseguenza, il design, l'implementazione e i test.

## Considerazioni Aggiuntive

### Requisiti e Progettazione (Design)

Sebbene in teoria i requisiti definiscano *cosa* fare e il design *come* farlo, in pratica i due aspetti sono spesso **interconnessi**:

*   L'architettura scelta può influenzare la strutturazione dei requisiti.
*   Requisiti di interoperabilità con altri sistemi possono imporre vincoli di design.
*   La necessità di soddisfare NFR critici (es. sicurezza, performance) può richiedere specifiche scelte architetturali, diventando di fatto un requisito.

### Prospettiva Agile sui Requisiti

Molti metodi Agili (es. Scrum) criticano la produzione di documentazione dei requisiti eccessivamente dettagliata all'inizio del progetto, sostenendo che sia uno spreco di tempo data la rapidità con cui i requisiti cambiano. Preferiscono:

*   Un approccio **incrementale**.
*   Esprimere i requisiti sotto forma di **User Story**.
*   Mantenere un **Product Backlog** dinamico.

Questo approccio è efficace per molti sistemi orientati al business, ma può essere problematico per:

*   Sistemi **critici** (safety-critical, mission-critical) che richiedono analisi di sicurezza e affidabilità approfondite *prima* dell'implementazione.
*   Grandi sistemi sviluppati da **team distribuiti** che necessitano di una base di specifiche più stabile e condivisa.
*   Progetti con **contratti a prezzo fisso**.

## Conclusioni Chiave

*   L'**ingegnerizzazione dei requisiti** è fondamentale per definire cosa un sistema deve fare (servizi/funzioni) e sotto quali vincoli (non funzionali, di dominio).
*   Si distinguono **requisiti utente** (alto livello, linguaggio naturale) e **requisiti di sistema** (dettagliati, strutturati, base per l'implementazione).
*   I requisiti **funzionali** descrivono i servizi, mentre i **non funzionali** definiscono proprietà e vincoli (performance, sicurezza, usabilità, ecc.), spesso cruciali per l'utilità del sistema.
*   Il processo di RE è **iterativo** e comprende elicitazione, analisi, specifica, validazione e gestione.
*   L'**elicitazione** coinvolge stakeholder diversi e presenta sfide legate alla comunicazione, ai conflitti e al cambiamento; tecniche come interviste, etnografia e scenari/user story aiutano a superarle.
*   La **specifica** documenta i requisiti (idealmente in modo chiaro, completo, consistente) usando linguaggio naturale, approcci strutturati o modelli grafici (es. UML).
*   La **validazione** assicura che i requisiti specificati siano corretti e soddisfino le reali esigenze.
*   La **gestione dei requisiti** è essenziale per controllare i cambiamenti inevitabili in modo strutturato, valutandone l'impatto.
*   Esiste una stretta **interconnessione** tra requisiti e decisioni di progettazione.
*   Gli approcci **Agili** gestiscono i requisiti in modo più flessibile e incrementale, adatto a certi contesti ma con limitazioni per altri.

---
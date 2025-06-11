# Cosa sono gli **Agenti AI**?

Gli **Agenti AI** si occupano di un ampio spettro di funzionalità, inclusi il **processo decisionale (decision making)**, la **risoluzione di problemi (problem solving)**, l'**interazione con ambienti esterni** e l'**esecuzione di azioni**.

Questi agenti possono essere implementati in diverse applicazioni per risolvere compiti (task) complessi in vari contesti aziendali, dalla progettazione software e automazione IT agli strumenti di generazione del codice e agli assistenti di chat. Utilizzano tecniche avanzate di **elaborazione del linguaggio naturale (Natural Language Processing - NLP)** per comprendere e rispondere agli input dell'utente passo dopo passo e determinare quando richiamare strumenti esterni.

## Come funzionano?

Alla base degli Agenti AI ci sono i **Large Language Model (LLM)**. Per questo motivo, questi sistemi sono spesso chiamati anche **agenti LLM**. Gli LLM tradizionali producono le loro risposte basandosi sui dati utilizzati per il loro addestramento, e sono limitati dalla loro specifica conoscenza e capacità di ragionamento. Al contrario, la tecnologia basata su agenti utilizza tecniche e **design pattern** specifici per ottenere informazioni aggiornate, ottimizzare i flussi di lavoro e creare **sotto-task autonomi** allo scopo di ottenere risultati complessi.

In questo processo, l'agente apprende ad adattarsi nel tempo alle aspettative dell'utente. La capacità dell'agente di **memorizzare le interazioni passate** e **pianificare le azioni future** favorisce un'esperienza personalizzata e risposte più corrette e mirate.

Gli agenti operano attraverso tre fasi fondamentali, definite anche *componenti*:

### Fase 1: Inizializzazione e Pianificazione dell'Obiettivo

Sebbene gli Agenti AI siano autonomi nel loro processo decisionale, richiedono **obiettivi e regole predefinite** dall'operatore umano. Le tre principali aree di influenza sono:

*   Il team di sviluppatori che ha progettato e addestrato il sistema.
*   Il team che fornisce all'utente l'accesso all'agente.
*   L'utente che fornisce all'agente gli obiettivi specifici da perseguire e stabilisce gli strumenti (tool) disponibili.

Dati gli obiettivi dell'utente e gli strumenti disponibili, l'Agente AI scompone il compito principale (task) per migliorare le prestazioni. Di fatto, crea un **piano di task e sotto-task specifici** per raggiungere un obiettivo complesso. Per compiti più semplici, la pianificazione potrebbe non essere necessaria. Invece, un agente può riflettere in maniera iterativa sulle sue risposte, migliorandole senza dover pianificare i passaggi successivi.

### Fase 2: Ragionamento e Utilizzo degli Strumenti

Gli Agenti AI basano le loro azioni sulle informazioni che percepiscono. Spesso, non possiedono una base di conoscenza completa, necessaria per portare a termine tutti i sotto-task di un obiettivo complesso. Per rimediare, gli Agenti AI utilizzano gli **strumenti (tool) a loro disposizione**. Questi possono includere **dataset esterni, ricerche web, API e persino altri agenti**. Dopo che l'informazione mancante è stata reperita da questi strumenti, l'agente può aggiornare la sua base di conoscenza ed effettuare un ragionamento. Questo significa che, lungo il percorso, l'agente **verifica costantemente le sue azioni e si autocorregge**, prendendo decisioni sempre più informate.

Per illustrare questo processo, immaginiamo che un utente voglia **redigere un report di analisi di mercato per un nuovo prodotto tecnologico**. L'utente chiede a un Agente AI di identificare i principali concorrenti, analizzare le tendenze di mercato recenti e stimare la potenziale quota di mercato. Poiché il modello LLM alla base dell'agente non possiede dati di mercato in tempo reale o analisi competitive ultra-specifiche, l'agente accede a **database di settore esterni** e **piattaforme di analisi di mercato**.

Nonostante queste nuove informazioni, l'agente potrebbe non essere in grado di formulare previsioni finanziarie accurate per il prodotto. Quindi, crea un nuovo sotto-task: **collaborare con un altro Agente AI specializzato in modellazione finanziaria**. Interagendo con questo secondo agente, ottiene proiezioni di vendita e analisi di redditività.

L'agente può ora **combinare le informazioni** apprese dai vari strumenti (dati di mercato, analisi dei concorrenti, proiezioni finanziarie) per identificare pattern e opportunità. Può quindi generare un report completo che evidenzia i punti di forza del prodotto, il panorama competitivo e il potenziale di mercato, presentandolo all'utente. Questa **condivisione di informazioni e capacità tra gli strumenti e altri agenti** è ciò che permette agli Agenti AI di essere più versatili (general-purpose) rispetto ai tradizionali modelli di AI.

### Fase 3: Apprendimento e Riflessione (Learning and Reflection)

Gli Agenti AI utilizzano **meccanismi di feedback**, provenienti da altri Agenti AI o da un intervento umano (**Human-In-The-Loop - HITL**), per migliorare l'accuratezza delle loro risposte. Tornando all'esempio precedente del report di analisi di mercato: dopo che l'agente ha presentato il suo report all'utente, memorizza le informazioni apprese dal **feedback dell'utente** (ad esempio, se alcune sezioni necessitano di maggiori dettagli o se certe conclusioni sono particolarmente apprezzate) per migliorare le prestazioni future e adattarsi meglio alle preferenze dell'utente per obiettivi simili.

Se altri agenti sono stati impiegati per raggiungere l'obiettivo (come l'agente specializzato in modellazione finanziaria del nostro esempio), si può utilizzare anche il loro feedback. Il **feedback multi-agente** può essere particolarmente utile per minimizzare il tempo che l'utente deve dedicare a fornire indicazioni. Tuttavia, gli utenti possono anche fornire feedback diretto sulle azioni dell'agente e sui suoi ragionamenti interni, per allineare al meglio i risultati con gli obiettivi prefissati.

I meccanismi di feedback migliorano le capacità di ragionamento dell'agente, attraverso un processo chiamato **affinamento iterativo (iterative refinement)**. Per evitare di ripetere gli stessi errori, gli Agenti AI possono anche memorizzare dati sulle soluzioni a ostacoli precedenti in una **base di conoscenza dedicata**.

## Agenti AI vs. Sistemi Non-Agentici (nei Chatbot)

Gli **AI chatbot** utilizzano tecniche di **AI conversazionale**, come l'**Elaborazione del Linguaggio Naturale (NLP)**, per comprendere le domande dell'utente e automatizzare le risposte fornite. La distinzione fondamentale tra diverse tipologie di chatbot risiede nella loro architettura e capacità, che li definisce come **agentici** o **non-agentici**.

I **chatbot AI non-agentici** sono quelli privi della capacità di accedere a **strumenti esterni**, di mantenere una **memoria** a lungo termine delle interazioni e di effettuare un **ragionamento complesso**. Di conseguenza:

*   Possono soddisfare soltanto **obiettivi a breve termine** e non sono in grado di effettuare una **pianificazione** strategica.
*   Richiedono, inoltre, un **continuo input da parte dell'utente** per procedere.
*   Possono produrre risposte a istruzioni comuni che si allineano generalmente con le aspettative dell'utente, ma **non sono in grado di rispondere in maniera ottimale a domande specifiche** che richiedono una profonda personalizzazione o l'accesso a dati contestuali dell'utente.
*   Dal momento che questi chatbot **non hanno una memoria persistente** delle interazioni passate, non possono apprendere dai propri errori o migliorare le risposte in base al feedback implicito o esplicito su interazioni precedenti non soddisfacenti.

Di contro, i **chatbot basati su Agenti AI**:

*   Imparano ad **adattarsi alle aspettative dell'utente nel tempo**, fornendo un'esperienza più **personale e coesa**.
*   Possono quindi completare **compiti complessi** creando dinamicamente dei **sotto-task** (subtask) senza un intervento umano costante, considerando e valutando diverse opzioni.
*   Queste diverse opzioni e le azioni intraprese possono essere **auto-corrette ed aggiornate** quando necessario, grazie a meccanismi di riflessione e feedback.
*   I chatbot basati su Agenti AI, a differenza di quelli non-agentici, **valutano attivamente gli strumenti a loro disposizione** (come API, database, altre fonti di conoscenza) e usano le risorse disponibili per **colmare eventuali gap informativi** e raggiungere l'obiettivo.

## Paradigmi di Ragionamento

Non esiste un'unica architettura standard per la costruzione di **Agenti AI**. Esistono, invece, diversi **paradigmi** che possiamo utilizzare per permettere agli agenti di risolvere problemi complessi che richiedono molteplici passaggi (multi-step).

### ReAct (Reasoning and Action)

Con il paradigma **ReAct (Reasoning and Action)**, possiamo istruire gli Agenti AI a "**pensare**" (ragionare) e pianificare dopo ogni azione eseguita. In base a ciascuna risposta ricevuta da uno **strumento (tool)**, l'agente decide quale strumento utilizzare successivamente. Questi cicli seguono lo schema **Think-Act-Observe** (Pensa-Agisci-Osserva) e sono utilizzati per risolvere i problemi passo dopo passo, migliorando iterativamente le risposte fornite.

Attraverso una specifica struttura di prompt, gli agenti possono essere istruiti a **"ragionare lentamente" (reason slowly)**, mostrando esplicitamente ogni "passaggio di pensiero". Il tracciamento del ragionamento dell'agente fornisce indicazioni preziose su come le risposte vengono formulate. In questo framework, gli agenti si aggiornano continuamente con nuovo ragionamento, il che può essere interpretato come una forma di **Chain-of-Thought (CoT)**.

### ReWOO (Reasoning WithOut Observation)

Il metodo **ReWOO (Reasoning WithOut Observation)**, a differenza di ReAct, elimina la dipendenza dagli output immediati degli strumenti (tool) per la pianificazione delle azioni successive. Invece, **gli agenti pianificano l'intera sequenza di azioni in anticipo**. L'uso potenzialmente ridondante degli strumenti viene evitato anticipando quali di essi utilizzare dopo aver ricevuto le istruzioni iniziali dall'utente. Questo approccio è utile anche dal punto di vista dell'utente, poiché permette di **confermare il piano d'azione** prima della sua esecuzione effettiva.

Il workflow ReWOO si articola tipicamente in tre moduli principali:

1.  **Pianificazione (Planning):** L'agente, dato il prompt dell'utente, anticipa i passaggi necessari e gli strumenti da utilizzare per ciascun passaggio.
2.  **Esecuzione (Execution/Worker):** L'agente (o un modulo "worker" dedicato) invoca, spesso in parallelo, gli strumenti identificati nella fase di pianificazione per raccogliere tutti gli output necessari.
3.  **Risposta (Response Generation):** Infine, l'agente combina il piano iniziale con gli output ottenuti dagli strumenti per formulare una risposta completa e coerente.

Questa pianificazione anticipata può contribuire a **ridurre l'uso di token e la complessità computazionale**, oltre a mitigare l'impatto di fallimenti intermedi degli strumenti, poiché il piano generale è già definito e le chiamate agli strumenti possono essere ottimizzate.
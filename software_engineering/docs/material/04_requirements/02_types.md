## Tipi Fondamentali di Requisiti

È utile distinguere i requisiti in base al loro livello di dettaglio e al loro scopo.

### Requisiti Utente vs. Requisiti di Sistema

*   **Requisiti Utente:** Sono formulati in **linguaggio naturale**, spesso accompagnati da diagrammi, per descrivere i servizi forniti dal sistema e i suoi vincoli operativi principali. Sono destinati primariamente al **cliente** e agli utenti finali, che non necessariamente possiedono competenze tecniche.
    *   *Esempio (Utente):* Il sistema dovrebbe generare dei report mensili che mostrano il costo di ciascun prodotto acquistato durante quel mese.
*   **Requisiti di Sistema:** Sono documenti **strutturati** che offrono descrizioni dettagliate delle funzioni, dei servizi e dei vincoli operativi del sistema. Definiscono **cosa deve essere implementato** e costituiscono una parte fondamentale del contratto tra cliente e fornitore.
    *   *Esempio (Sistema):*
        1.  Il sommario dei prodotti acquistati nel mese X deve essere generato alle ore 17:00 dell'ultima giornata lavorativa del mese X.
        2.  Il report deve elencare: nome prodotto, quantità totale acquistata, costo totale per prodotto.
        3.  Se un prodotto esiste in diverse varianti (es. confezione singola, multipla), ogni variante deve apparire come voce separata nel report.
        4.  L'accesso alla funzione di generazione e visualizzazione del report deve essere limitato agli utenti presenti nella lista "Manager Acquisti".

### Requisiti Funzionali, Non Funzionali e di Dominio

*   **Requisiti Funzionali:** Specificano i **servizi** che il sistema deve fornire, come dovrebbe reagire a determinati input e come dovrebbe comportarsi in situazioni particolari. Possono anche indicare esplicitamente ciò che il sistema *non* deve fare. Dipendono fortemente dal tipo di software, dagli utenti e dal contesto operativo. A livello utente, possono essere descrizioni generali; a livello di sistema, devono essere dettagliati e precisi.
*   **Requisiti Non Funzionali (NFR):** Impongono **vincoli** sui servizi o sulle funzioni offerte. Riguardano aspetti come tempi di risposta, affidabilità, sicurezza, usabilità, manutenibilità, vincoli sul processo di sviluppo (es. standard da seguire, linguaggi da usare) o sull'hardware. Spesso si applicano all'intero sistema piuttosto che a singole funzionalità e possono essere più critici dei requisiti funzionali, poiché il loro mancato rispetto può rendere il sistema inutilizzabile o inefficace.
*   **Requisiti di Dominio:** Derivano dal **contesto applicativo** specifico del sistema. Possono essere requisiti funzionali aggiuntivi o vincoli particolari imposti da normative, standard di settore o prassi consolidate in quel dominio.
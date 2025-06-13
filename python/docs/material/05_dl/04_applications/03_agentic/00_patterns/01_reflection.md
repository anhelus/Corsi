Tutti coloro che hanno usato tool come gemini o ChatGPT potrebbero aversperimentato degli output non soddisfacenti e, contestualmente, aver dato del feedback critico per aglitare l'LLM a migliorare la sua risposta, ottenendone quindi una migliore. Cosa accadrebbe se automatizzassimo lo step di dare il feedback critico, in modo che il mdoello critichi automaticament eil suo output e miliori la risposta? Questo è il motivo alla base dello sviluppo del modello di *reflection*.

PEr esempio, possiamo coonsiderare il task dis chiedere ad un LLM di scrivere del codice. Possiamo chiedergli di generar eil codice desiderato direttamente, in modod da effeattuare una qualche task X. Dopo qeusto, possiamo chiedergli di riflettere sul suo input, magari come segue:

* COntrolla il codice genrato per correttezza, stile, ed efficienza, e dai un giudizio critico sul come migliroarlo.

Alle volte, questo fa in modo che la LLM trovi dei problemi, ed abbia delle critiche costruittive. A quel punto, possiamo darle più contesto, icnludendo magari il codice geenerato in porecedenza e il feedback costruittov, e chiedergli di usare questo feedback per magari riscrivere il codice. Questo può condurre ad una risposta migliroe. Ripetere il processo di *criticaa* e *riscritutra* potrebbe portare ad ulteriori migliroamenti., Ciò permette quindi all'LLM di indivudare dei gap e migliroare il suoi output dsu diverse task, incluse la prodzuoien di codice, scrittura di test, e risposta a domande.

E possiamo andare oltre dando all'LLM degli strumenti che lo aiutano a valuatre il suououtput: per esempio, eseguire alucni unit test sul suo codice, per controllare se genera risultati corretti su test case, o ricercare sul web per controllare l'output dato. Quindi può riflettere sugli errori trovati, ed avere delle idee per il migliroamento.

Inoltre, potremmo implementare la reflection usando un framewokr multi-agente. Per esempio, si può creare una coppia di agenti, una con il task di generare dei buoni output, e l'altra con il task di fare una critica costruttiva degli output del primo agente. La discussione risultante tra i due agenti porta a rispote migliroi.

Questo processo, chiamato *reflection*, è un tipo di agentic workflow relativamente basilare, ma migliroa di molto i risultati dell'applicazione in alcuni casi.
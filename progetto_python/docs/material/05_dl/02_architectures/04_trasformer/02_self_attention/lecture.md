<!-- https://www.geeksforgeeks.org/self-attention-in-nlp/ -->

La *self-attention* venne per la prima volta proposta dai ricercatori di Google per rispondere alle sfide delle architeture encoder-decoder nelle sequenze di grandi dimensioni. Ma, cosa è l'attention?^

Abbiamo visto come il deep learning abbia fatto significativi progressi nell'area legata ai meccanismi di attention, specificamente per task dell'NLP come machine translation, captioning delle immagini, generazione dei dialoghi, e simili. Lo scopo di questo meccanismo è è migliorare le perfomrance di una RNN encoder-decoder. 

L'attention venne proposta dagli autori della rete encoder-decoder come una sua estensione. Lo scopo è andare oltre le limitazioni del modello encoder-decoder cofificando la sequenza di input in un vettore a lunghezza fissata, dal quale decodificare ogni step temporale in output. 

## Il modello encoder-decoder

Il modello encoder-decoder è ampiamente adottato, e presentanto in versioni differenti a secodna della relazione tra le lunghezze di input ed output.

Ad alto livello, il modello comprende due sotto-modelli: un encoder ed un decoder. L'encoder è responsabile per valutare l'ingresso istante dopo istante e codificare l'in tera sequenza in u vettore  alunghezza fissata chiamato context vector. Il decoder è invece responsabile di ricostruire l'output a partire da tale context vector.

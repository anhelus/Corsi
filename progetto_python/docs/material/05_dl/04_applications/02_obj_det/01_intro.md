# introduzione

Una delle più semplici analogie è chiamata "localizzazione degli oggetti". Ciò sigfnifica che, data un'ikmmagine di un oggetto, viene predetta la *bounding box* per l'oggetto. Assumiamo però che ci sia solo un oggetto per immagine. Più formalmente, vogliamo che il modello predica quattro numeri: x, y, w, h, chge correspondono  alle coordinate x, y dell'angolo in alto a sinistra della bounding box, e la sua altezaa ed ambiezza. La cosa buona +è che possiamo adottare un modello di classificazione per farlo. Prima, avevamoun modello poteva mandare in output 1000 numeri corrispodnenti alle probabilità di classe:

Potremmo semplicemente modificare il layer finale del modello in qualcosa che manda fuoriu quattro numero, oivvero x, y, w,h

Dovrmo anche modificarfe  la loss dalla crossentropia - qualcosa che può essere usata per predire classi e probabilità - ad MSE, qualcosa che può essere usata per comparare una coppia di numeri:

$$
MSE = \sum (y_i - y_i^{pred})^2
$$

Qui, $y_i$ è la label vera (un numero per la dimensione e le coordinate della bounding box) e $\hat{y}_i$ è invece il label predetto. Sommiamo questi quattro numeri su tutte le immagini campione.

Anche uan solzuoine così semplcie sblocca diverse oportunità nella computer vision. Possiamo, per esempio, predeire alcuni punti importanti nel volto umano invece delle coordinate dlela bounding box e, usando questi punti, calcoliamo l'orientazione della testa e disegnarci qualcosa sopra, come un cappello, come usato in Snapshat.

## Object detection

Tuyttavia, il caso che ci interessa è quello della *object detection*, ovvero dell'individuazione degli oggetti. In queto caso dobbiamo mandare in output la dimensione e le coordinate delle bounding box, ma ora ci possono essere più oggetti nell'immagine.

https://github.com/adensur/blog/blob/main/computer_vision_zero_to_hero/09_object_detection_task/README.md
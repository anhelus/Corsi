Finora abbiamo visto come le sequenze Python possono essere utilizzate per rappresentare degli insiemi, o *collezioni*, di oggetti che, in qualche modo, possiamo "scorrere", come ad esempio [liste](../01_intro/04_lists.md), [tuple](../02_syntax/04_data_structures.md#tuple) o [dizionari](../02_syntax/04_data_structures.md#dizionari). Il comun denominatore per tutti questi tipi di oggetti è il derivare dal concetto "base" di *iteratore*, ovvero di un oggetto Python che contiene al suo interno una serie di valori che possono essere, per l'appunto, "attraversati" alla bisogna.

Per definire un iteratore, Python sfrutta essenzialmente due metodi.

1. `__iter__()`, che inizializza e restituisce l'iteratore.
2. `__next__()`, che recupera il valore successivo nell'iteratore, lanciando un'eccezione di tipo `StopIteration` quando non ci sono ulteriori valori disponibili.

Le sequenze cui accennavamo prima sono quindi chiamate *iterabili*, e sono, in poche parole, degli oggetti che possono restituire un iteratore. In pratica, definiamo come iterabile un qualsiasi oggetto Python sul quale possiamo iterare mediante un ciclo `for` mediante un'apposita implementazione del metodo `__iter__()`. 

##### Un esempio

Ad esempio, possiamo vedere cosa accade su una lista:

```py
l = [1, 2, 3]
it = iter(l)

print(next(it))
print(next(it))
print(next(it))
```

L'output sarà:

```sh
1
2
3
```

Come possiamo vedere, una volta dichiarata la lista `l`, possiamo definire un iteratore sulla stessa (`it`) usando il metodo `iter()` e, conseguentemente, chiamare `next()` sull'iteratore per ottenere il valore all'indice successivo.

##### Creazione di un iteratore

Python ci offre la possibilità di creare un iteratore utilizzando una calsse che implementa i metodi `__iter__()` e `__next__()`. Proviamo, ad esempio, a creare un iteratore che restituisca tutti i numeri pari a partire da $2$.

```py
class NumeriPari():

    def __iter__(self):
        self.n = 2
        return self
    
    def __next__(self):
        x = self.n
        self.n += 2
        return x
```

Nello snippet precedente:

* la classe `NumeriPari()` implementa, all'interno del metodo `__iter__()`, l'unico attributo di interesse, ovvero `n`, che sarà pari a $2$, e restituisce l'istanza dell'iteratore;
* all'interno del metodo `__next__()` viene implementata la logica di accesso all'elemento successivo che, in questo caso, prevede un incremento di `n` pari a $2$.

Proviamo ad utilizzare l'iteratore. Al solito, dovremo creare un'istanza di `NumeriPari()`, trasformarlo in un iteratore, e quindi chiamare il metodo `next()`.

```py
seq = NumeriPari()
it = iter(seq)

print(next(it))
print(next(it))
print(next(it))
print(next(it))
print(next(it))
```

L'output atteso sarà:

```sh
2
4
6
8
10
```

##### L'eccezione `StopIteration`

L'eccezione `StopIteration` è un'eccezione integrata in Python, ed ha il compito di segnalare il fatto che non vi sono ulteriori valori su cui è possibile chiamare il metodo `next()`. Una volta lancaita l'eccezione, ulteriori chiamate a `next()` continueranno a lanciare una `StopIteration`. Per vederla in azione, proviamo ad utilizzarla con una semplice lista.

```py
while True:
    try:
        print(next(it))
    except StopIteration:
        print("Fine dell'iteratore!")
        break
```

In questo caso, l'output sarà:

```sh
1
2
3
Fine dell'iteratore!
```

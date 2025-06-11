#!/bin/bash

# Imposta Bash per uscire in caso di errore
set -e

# Installa le dipendenze di MkDocs
pip install mkdocs mkdocs-material

# Pulisce la cartella finale precedente
rm -rf final_site
mkdir final_site

# --- Build e copia del sito Python ---
echo "Building Python..."
mkdocs build -f python/mkdocs.yml
mv python/site final_site/python

# --- Build e copia del sito Informatica ---
echo "Building Informatica..."
mkdocs build -f informatica/mkdocs.yml
mv informatica/site final_site/informatica

# --- Build e copia del sito Ing. Software ---
echo "Building Ingegneria del Software..."
mkdocs build -f isw/mkdocs.yml
mv isw/site final_site/isw

# (Opzionale ma consigliato) Crea una pagina indice principale
echo '<!DOCTYPE html><html><head><title>Corsi</title></head><body><h1>I miei corsi</h1><ul><li><a href="/python/">Python per il Calcolo Scientifico</a></li><li><a href="/informatica/">Fondamenti di Informatica</a></li><li><a href="/isw/">Ingegneria del Software</a></li></ul></body></html>' > final_site/index.html
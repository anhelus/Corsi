#!/bin/bash

# Il processo si interrompe immediatamente se un comando fallisce
set -e

echo "===== INIZIO DEL PROCESSO DI BUILD ====="

echo "Passo 1: Installazione delle dipendenze Python..."
# Usiamo -q per un output più pulito
pip install -q mkdocs mkdocs-material
echo "Dipendenze installate con successo."

echo "Passo 2: Preparazione della cartella di destinazione..."
rm -rf final_site
mkdir final_site
echo "Cartella 'final_site' creata."

# --- Build e copia del sito Python ---
echo "Passo 3: Building del sito Python..."
# LA MODIFICA CHIAVE È QUI: usiamo "python3 -m mkdocs"
python3 -m mkdocs build -f progetto_python/mkdocs.yml
echo "Sito Python buildato. Spostamento dei file..."
mv progetto_python/site final_site/python
echo "File del sito Python spostati in /python."

# --- Build e copia del sito Informatica ---
echo "Passo 4: Building del sito Informatica..."
# E QUI...
python3 -m mkdocs build -f progetto_informatica/mkdocs.yml
echo "Sito Informatica buildato. Spostamento dei file..."
mv progetto_informatica/site final_site/informatica
echo "File del sito Informatica spostati in /informatica."

# --- Build e copia del sito Ing. Software ---
echo "Passo 5: Building del sito Ingegneria del Software..."
# E QUI.
python3 -m mkdocs build -f progetto_ing_software/mkdocs.yml
echo "Sito Ing. Software buildato. Spostamento dei file..."
mv progetto_ing_software/site final_site/ing-software
echo "File del sito Ing. Software spostati in /ing-software."

# --- Creazione pagina indice ---
echo "Passo 6: Creazione della pagina indice principale..."
echo '<!DOCTYPE html><html><head><title>Corsi</title></head><body><h1>I miei corsi</h1><ul><li><a href="/python/">Python per il Calcolo Scientifico</a></li><li><a href="/informatica/">Fondamenti di Informatica</a></li><li><a href="/ing-software/">Ingegneria del Software</a></li></ul></body></html>' > final_site/index.html
echo "Pagina indice creata."

echo "===== BUILD COMPLETATO CON SUCCESSO! ====="
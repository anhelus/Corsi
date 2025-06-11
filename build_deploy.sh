#!/bin/bash

# Interrompe lo script immediatamente se un comando fallisce
set -e

echo "===== INIZIO PROCESSO DI BUILD UNIFICATO ====="

echo "Passo 1: Installazione delle dipendenze..."
pip install mkdocs mkdocs-material
echo "Dipendenze installate."

echo "Passo 2: Preparazione della cartella di destinazione..."
rm -rf final_site
mkdir final_site
echo "Cartella 'final_site' creata."

# --- PASSO FONDAMENTALE 1: BUILD DELLA LANDING PAGE ---
echo "Building del sito principale (landing page)..."
mkdocs build -f progetto_principale/mkdocs.yml
echo "Copia dei file della landing page nella root di destinazione..."
# Copia il *contenuto* della cartella 'site', non la cartella stessa!
cp -r progetto_principale/site/. final_site/
echo "Landing page pronta."


# --- PASSO FONDAMENTALE 2: BUILD DEI CORSI NELLE SOTTOCARTELLE ---
echo "Building del corso di Python..."
mkdocs build -f progetto_python/mkdocs.yml
# Sposta il sito buildato nella sottocartella /python
mv progetto_python/site final_site/python
echo "Corso di Python inserito in /python."


echo "Building del corso di Informatica..."
mkdocs build -f progetto_informatica/mkdocs.yml
# Sposta il sito buildato nella sottocartella /informatica
mv progetto_informatica/site final_site/informatica
echo "Corso di Informatica inserito in /informatica."


echo "Building del corso di Ingegneria del Software..."
mkdocs build -f progetto_ing_software/mkdocs.yml
# Sposta il sito buildato nella sottocartella /ing-software
mv progetto_ing_software/site final_site/ing-software
echo "Corso di Ing. Software inserito in /ing-software."


echo "===== BUILD COMPLETATO CON SUCCESSO! ====="
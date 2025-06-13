#!/bin/bash

set -e

echo "===== INITIALIZIATING BUILD PROCESS ====="

echo "Step 1: Installing dependencies..."
pip install mkdocs mkdocs-material
echo "Dependencies installed."

echo "Step 2: Preparing destination folder..."
rm -rf final_site
mkdir final_site
echo "'final_site' folder created."

echo "Building landing page..."
mkdocs build -f main/mkdocs.yml
echo "Copying files of the landing page in destination root..."
cp -r main/site/. final_site/
echo "Landing page ready."


echo "Building Python..."
mkdocs build -f python/mkdocs.yml
mv python/site final_site/python
echo "Python built in /python."


echo "Building Computer Science..."
mkdocs build -f computer_science/mkdocs.yml
mv computer_science/site final_site/informatica
echo "Computer Science built in /informatica."


echo "Building Software Engineering..."
mkdocs build -f software_engineering/mkdocs.yml
mv software_engineering/site final_site/ing-software
echo "Software Engineering built in /ing-software."


echo "===== BUILD SUCCESSFULLY COMPLETED! ====="
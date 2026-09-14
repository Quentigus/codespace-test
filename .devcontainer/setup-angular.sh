#!/bin/bash

temporary_folder=tmp
CI=true

# Vérifie si le projet Angular est déjà créé (évite de réécrire par-dessus s'il existe déjà)
if [ ! -f "package.json" ]; then
  echo "🚀 Initialisation de l'application Angular (Vite)..."

  # Crée l'application Angular dans le dossier courant (.)
  npm i -g @angular/cli
  ng new --skip-install --skip-tests
  # cp -r --update=none $temporary_folder/* .
  # rm -rf $temporary_folder

  # Installe les dépendances (dont Bootstrap par exemple)
  # npm install
  # npm install bootstrap

  echo "✅ Application Angular prête ! Tape 'npm run dev' pour lancer le serveur."
fi

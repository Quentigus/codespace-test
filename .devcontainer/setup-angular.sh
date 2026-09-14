#!/bin/bash

temporary_folder=tmp
angular_app_name=angular-app

export NG_FORCE_TTY=false
export CI=true

# Vérifie si le projet Angular est déjà créé (évite de réécrire par-dessus s'il existe déjà)
if [ ! -f "package.json" ]; then

  # Crée l'application Angular dans le dossier courant (.)
  echo "🚀 Installation de Angular CLI..."
  npm i -g @angular/cli
  
  echo "🚀 Initialisation de l'application Angular (Vite)..."
  ng new $angular_app_name --skip-install --skip-tests
  cp -r --update=none $angular_app_name/* .
  rm -rf $angular_app_name

  # Installe les dépendances (dont Bootstrap par exemple)
  echo "🚀 Installation des dépendances..."
  npm install

  echo "✅ Application Angular prête ! Tape 'npm run dev' pour lancer le serveur."
fi

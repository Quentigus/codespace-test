#!/bin/bash

temporary_folder=tmp

# Vérifie si le projet React est déjà créé (évite de réécrire par-dessus s'il existe déjà)
if [ ! -f "package.json" ]; then
  echo "🚀 Initialisation de l'application React (Vite)..."

  # Crée l'application React dans le dossier courant (.)
  npm create vite@latest $temporary_folder --yes --- --template=react --eslint=true --no-immediate
  cp -rn $temporary_folder .
  rm -rf $temporary_folder

  # Installe les dépendances (dont Bootstrap par exemple)
  npm install
  # npm install bootstrap

  echo "✅ Application React prête ! Tape 'npm run dev' pour lancer le serveur."
fi

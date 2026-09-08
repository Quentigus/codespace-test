#!/bin/bash

# Vérifie si le projet React est déjà créé (évite de réécrire par-dessus s'il existe déjà)
if [ ! -f "package.json" ]; then
  echo "🚀 Initialisation de l'application React (Vite)..."

  # Crée l'application React dans le dossier courant (.)
  npm create vite@latest . --yes --- --template=react --overwrite=ignore --eslint=true --no-immediate

  # Installe les dépendances (dont Bootstrap par exemple)
  npm install
  # npm install bootstrap

  echo "✅ Application React prête ! Tape 'npm run dev' pour lancer le serveur."
fi

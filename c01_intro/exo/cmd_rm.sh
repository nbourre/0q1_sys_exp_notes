#!/bin/bash

# Créer un répertoire de test
mkdir test_rm

# Aller dans le répertoire
cd test_rm

# Créer des fichiers et des répertoires pour les exercices
touch test.txt
touch .hidden_file
mkdir dossier_vide
mkdir dossier_avec_fichiers
touch dossier_avec_fichiers/fichier1.txt
touch dossier_avec_fichiers/fichier2.txt
ln -s test.txt lien_test.txt

# Créer un fichier en lecture seule
touch readonly_file.txt
chmod 444 readonly_file.txt

# Retour au répertoire parent
cd ..
#!/bin/bash

# Création du répertoire principal pour les exercices
mkdir -p bash_exercises
cd bash_exercises

# Création de sous-répertoires pour différents exercices
mkdir -p {rm_exercises,cp_exercises,mv_exercises}

# Création de fichiers pour les exercices de suppression (rm)
cd rm_exercises
touch {file1.txt,file2.txt,file3.txt}
mkdir -p dir_to_remove
touch dir_to_remove/{file4.txt,file5.txt}
touch readonly_file.txt
chmod 444 readonly_file.txt
cd ..

# Création de fichiers pour les exercices de copie (cp)
cd cp_exercises
touch {original_file1.txt,original_file2.txt}
mkdir -p dir_to_copy
touch dir_to_copy/{file6.txt,file7.txt}
cd ..

# Création de fichiers pour les exercices de déplacement (mv)
cd mv_exercises
touch {move_file1.txt,move_file2.txt}
mkdir -p dir_to_move
touch dir_to_move/{file8.txt,file9.txt}
cd ..

echo "Structure de fichiers et répertoires créée pour les exercices."

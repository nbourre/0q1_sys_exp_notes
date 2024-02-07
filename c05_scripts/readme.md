# Premier pas avec les scripts bash <!-- omit in toc -->

# Table des matières <!-- omit in toc -->
- [Introduction](#introduction)
- [Qu'est-ce que bash?](#quest-ce-que-bash)
- [Qu'est-ce qu'un script?](#quest-ce-quun-script)
- [Pourquoi écrire des scripts?](#pourquoi-écrire-des-scripts)
- [Exemple d'un script](#exemple-dun-script)
  - [Étudier le contenu du script](#étudier-le-contenu-du-script)
  - [Analyse du script](#analyse-du-script)
- [Exécution du script](#exécution-du-script)
- [Résumé](#résumé)
- [Exercices](#exercices)


# Introduction
Ce cours est une introduction à la programmation de scripts en bash. Il est destiné à des étudiants qui ont déjà une connaissance de base de la ligne de commande.

# Qu'est-ce que bash?
Depuis le début de la session, on entre des commandes dans l'interface de la ligne de commande. Ces commandes sont interprétées par un programme appelé `shell`. Il existe plusieurs shells, mais le plus commun est `bash` (Bourne Again SHell).

# Qu'est-ce qu'un script?
Un script est un fichier texte qui contient une suite de commandes. Ces commandes sont exécutées dans l'ordre où elles apparaissent dans le fichier. Un script est exécuté par le shell.

# Pourquoi écrire des scripts?
Un script permet d'automatiser des tâches répétitives. Par exemple, si vous avez une série de commandes que vous exécutez régulièrement, vous pouvez les mettre dans un script pour les exécuter d'un seul coup.

> **Note** : Vous vous souvenez peut-être que lorsque je corrigeais vos travaux, j'exécutais une commande `wget` pour télécharger un script que j'avais préalablement écrit. Ce script me permettait de voir rapidement si votre travail était bien fait. C'est un exemple d'automatisation.

# Exemple d'un script
Tapez la commande suivante pour récupérer un script que j'ai préparé pour vous:

```bash
# Revenir dans votre répertoire personnel
cd

# Télécharger le script
wget -O c05ex01.sh http://tinyurl.com/0q1c02exrm
```

Cette commande télécharge le contenu de la page `http://tinyurl.com/0q1c02exrm` dans un fichier appelé `c05ex01.sh`. Assurez-vous que le fichier est présent dans votre répertoire courant.

## Étudier le contenu du script
Regardez le contenu du script avec `vim`.

<details><summary>Quelle est la commande pour ouvrir le script dans `vim`?</summary>

```bash
vim c05ex01.sh
```
</details>

<br />

Le contenu du script est le suivant:


```bash
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
```

## Analyse du script
La première ligne du script est `#!/bin/bash`. C'est une convention pour indiquer que le script doit être exécuté par `bash`.

Ensuite pour le restant du script, on remarque qu'il s'agit de commandes que nous avons déjà vues. Le script crée une structure de répertoires et de fichiers pour des exercices que nous ferons plus tard.

Les lignes débutant avec `#` sont des commentaires. Ils sont ignorés par le shell. Ils servent à documenter le script.

# Exécution du script
Après le téléchargement du script, **on ne pourra pas l'exécuter tout de suite**. Il faut d'abord donner la permission d'exécution au fichier.

<details><summary>Quelle est la commande pour donner la permission d'exécution au fichier?</summary>

```bash
chmod +x c05ex01.sh
```
</details>

<br />
Avant d'exécuter le script listez le contenu de votre répertoire courant pour voir si le script est bien présent et notez les droits d'accès du fichier.

Une fois que la permission d'exécution est donnée, on peut exécuter le script avec la commande suivante:

```bash
./c05ex01.sh
```

Remarquez comment on exécute le script. On utilise `./` pour indiquer que le fichier est dans le répertoire courant.

---

# Résumé
- Un script est un fichier texte qui contient une suite de commandes.
- Par convention, un script `bash` commence par `#!/bin/bash`.
- Un script permet d'automatiser des tâches répétitives.
- Un script doit être exécutable pour être exécuté.
- Pour exécuter un script, on utilise `./` suivi du nom du fichier.

---

# Exercices
- Faites un script nommé "dossiers_ecole.sh` qui créera la structure de répertoire suivant :

```bash
cegep/
├─ a23/
│  ├─ prog_struct/
│  ├─ math_info/
│  ├─ web_client_1/
│  ├─ algo/
├─ h24/
│  ├─ sys_exp/
│  │  ├─ notes/
│  │  ├─ labos/
│  │  ├─ exos/
│  ├─ struct_donnees/
│  ├─ soutien/
│  ├─ dev_embarques/
│  ├─ web_client_2/
├─ a24/
├─ h25/
```

- Faites un script qui supprime les dossiers crées par le script `c05ex01.sh`.

> **Note** : Il semblerait que ce soit possible d'exécuter des scripts bash dans Windows. Le script du premier exercice pourrait vous être fort utile pour organiser vos cours. Si vous êtes intéressé, je vous invite à chercher comment faire. Vous pourriez même partager vos découvertes avec vos collègues de classe.
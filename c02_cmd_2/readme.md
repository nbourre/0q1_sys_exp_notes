# Cours 02 - Nouvelles commandes <!-- omit in toc -->

# Table des matières <!-- omit in toc -->
- [Commande : `rm`](#commande--rm)
  - [Options Importantes](#options-importantes)
  - [Avertissements](#avertissements)
- [Commande : `cp`](#commande--cp)
  - [Options Importantes](#options-importantes-1)
  - [Exemples](#exemples)
- [La Commande `mv`](#la-commande-mv)
  - [Options Importantes](#options-importantes-2)
  - [Exemples](#exemples-1)
- [Éditeurs de Texte](#éditeurs-de-texte)
  - [Éditeur `vim`](#éditeur-vim)
    - [Modes de Base](#modes-de-base)
    - [Commandes de Base](#commandes-de-base)
    - [Navigation dans un Fichier](#navigation-dans-un-fichier)
    - [Recherche et Remplacement](#recherche-et-remplacement)
    - [Astuces et Conseils](#astuces-et-conseils)
  - [Éditeur `nano`](#éditeur-nano)
- [Exercices](#exercices)
  - [Préparation](#préparation)
  - [Exercices pour `rm`](#exercices-pour-rm)
  - [Exercices pour `cp`](#exercices-pour-cp)
  - [Exercices pour `mv`](#exercices-pour-mv)
  - [Nettoyage](#nettoyage)
  - [Exercices pour `vim`](#exercices-pour-vim)
    - [Préparation](#préparation-1)
    - [Exercices de Base pour `vim`](#exercices-de-base-pour-vim)


# Commande : `rm`
- **Usage** : `rm` est utilisée pour supprimer des fichiers et des répertoires.
- **Syntaxe** : `rm [options] [fichier ou répertoire]`

## Options Importantes
- **-r** : Supprime récursivement les répertoires et leur contenu.
- **-f** : Force la suppression sans demander de confirmation, même si les fichiers sont en lecture seule.
- **-rf** : Combinaison des deux options ci-dessus, supprime récursivement et force la suppression.

## Avertissements
- La suppression avec `rm -rf` est **irréversible**. Utilisez cette commande avec une extrême prudence.
- Toujours vérifier le chemin avant d'exécuter la commande pour éviter la suppression de données importantes.

# Commande : `cp`
- **Usage** : `cp` est utilisée pour copier des fichiers et des répertoires.
- **Syntaxe** : `cp [options] [source] [destination]`

## Options Importantes
- **-r** : Copie récursive de répertoires et de leur contenu.
- **-i** : Demande confirmation avant d'écraser un fichier existant.
- **-v** : Affiche des informations détaillées pendant la copie.

## Exemples
- Copier un fichier dans un autre répertoire : `cp fichier.txt /chemin/vers/destination/`
- Copier et renommer un fichier : `cp fichier.txt /chemin/vers/destination/nouveau_nom.txt`
- Copie récursive d'un répertoire : `cp -r /chemin/vers/dossier /chemin/vers/destination/`

---

# La Commande `mv`
- **Usage** : `mv` est utilisée pour déplacer ou renommer des fichiers et des répertoires.
- **Syntaxe** : `mv [options] [source] [destination]`

## Options Importantes
- **-i** : Demande confirmation avant d'écraser un fichier existant.
- **-v** : Affiche des informations détaillées pendant le déplacement.

## Exemples
- Déplacer un fichier : `mv fichier.txt /chemin/vers/destination/`
- Renommer un fichier : `mv ancien_nom.txt nouveau_nom.txt`
- Déplacer un répertoire : `mv /chemin/vers/dossier /chemin/vers/nouvelle_destination/`

---

# Éditeurs de Texte
Vous avez vu comment afficher le contenu d'un fichier avec `cat`. Vous avez aussi vu comment créer un fichier avec `touch`. Mais comment modifier le contenu d'un fichier ?

Plusieurs éditeurs de texte sont disponibles sur Linux. Les plus populaires sont `nano`, `vim` et `emacs`. Nous allons voir comment utiliser `nano` et `vim`.

## Éditeur `vim`
- **Description** : `vim` est un éditeur de texte puissant et hautement configurable, disponible sur la plupart des systèmes UNIX et Linux. Il n'est pas un éditeur de texte graphique, mais il est très populaire parmi les utilisateurs avancés.
- **Mode de Fonctionnement** : `vim` fonctionne en différents modes, principalement le mode normal, le mode insertion et le mode commande.

### Modes de Base
- **Mode Normal** : Pour naviguer dans un fichier et effectuer des opérations d'édition. Accessible en appuyant sur `Esc`.
- **Mode Insertion** : Pour insérer du texte. Accessible depuis le mode normal en appuyant sur `i`.
- **Mode Commande** : Pour exécuter des commandes `vim`. Accessible depuis le mode normal en appuyant sur `:`.

### Commandes de Base
- **Ouvrir un Fichier** : `vim fichier.txt`
- **Entrer en Mode Insertion** : `i`
- **Sauvegarder un Fichier** : `:w`
- **Quitter `vim`** : `:q`
- **Sauvegarder et Quitter** : `:wq` ou `ZZ`
- **Annuler la Dernière Action** : `u` (en mode normal)
- **Refaire une Action** : `Ctrl + r` (en mode normal)

### Navigation dans un Fichier
- **Déplacer le Curseur** : Utiliser les touches `h` (gauche), `j` (bas), `k` (haut), `l` (droite)
- **Aller en Haut du Fichier** : `gg`
- **Aller en Bas du Fichier** : `G`
- **Aller à la Ligne n** : `nG` où `n` est le numéro de ligne

### Recherche et Remplacement
- **Rechercher un Texte** : `/motif` où `motif` est le mot recherché ensuite, on appuie sur `n` pour passer au résultat suivant et `N` pour le précédent
- **Remplacer** : `:%s/ancien/nouveau/g` pour remplacer `ancien` par `nouveau` dans tout le fichier

### Astuces et Conseils
- **Apprendre Progressivement** : Commencez par les commandes de base et ajoutez-en de nouvelles à votre répertoire au fur et à mesure.
- **Personnalisation** : `vim` est hautement personnalisable via le fichier `.vimrc`.
- **Aide Intégrée** : Utilisez `:help sujet` pour obtenir de l'aide sur un sujet spécifique.

---

`vim` est un éditeur extrêmement puissant, mais sa courbe d'apprentissage peut être abrupte. La pratique régulière et l'exploration de ses nombreuses fonctionnalités peuvent grandement améliorer votre efficacité en tant qu'éditeur de texte. Par contre, une fois que vous avez appris à l'utiliser, vous ne voudrez plus jamais utiliser un autre éditeur.

---

## Éditeur `nano`

TODO : Compléter. Voir ChatGPT pour inspiration.

# Exercices

## Préparation
1. Exécuter la commande `wget --content-disposition http://tinyurl.com/0q1c02exrm`
   - Cette commande télécharge un script qui crée des fichiers et des répertoires pour les exercices.
2. S'assurer que le fichier `cmd_rm.sh` est présent dans le dossier.
3. Taper la commande `chmod +x cmd_rm.sh`
   - La commande `chmod` permet de changer les permissions d'un fichier. On verra plus en détail cette commande plus tard.
   - Dans le cas présent, on ajoute l'option `+x` pour rendre le fichier exécutable.
4.  Taper la commande `./cmd_rm.sh` pour exécuter le script et créer les fichiers et répertoires pour les exercices.
5.  S'assurer que le dossier `bash_exercises` a été créé et qu'il contient les fichiers et répertoires pour les exercices.

> **Notes**
>
> Pour les curieux, voici le contenu du script `cmd_rm.sh` :
> <details><summary>Script</summary>
>
> ```bash
> #!/bin/bash
> 
> # Création du répertoire principal pour les exercices
> mkdir -p bash_exercises
> cd bash_exercises
> 
> # Création de sous-répertoires pour différents exercices
> mkdir -p {rm_exercises,cp_exercises,mv_exercises}
> 
> # Création de fichiers pour les exercices de suppression (rm)
> cd rm_exercises
> touch {file1.txt,file2.txt,file3.txt}
> mkdir -p dir_to_remove
> touch dir_to_remove/{file4.txt,file5.txt}
> touch readonly_file.txt
> chmod 444 readonly_file.txt
> cd ..
> 
> # Création de fichiers pour les exercices de copie (cp)
> cd cp_exercises
> touch {original_file1.txt,original_file2.txt}
> mkdir -p dir_to_copy
> touch dir_to_copy/{file6.txt,file7.txt}
> cd ..
> 
> # Création de fichiers pour les exercices de déplacement (mv)
> cd mv_exercises
> touch {move_file1.txt,move_file2.txt}
> mkdir -p dir_to_move
> touch dir_to_move/{file8.txt,file9.txt}
> cd ..
> 
> echo "Structure de fichiers et répertoires créée pour les exercices."
> 
> ```
> </details>

---


## Exercices pour `rm`

> **Notes**
> 
> Pour chacune des questions, veuillez noter vos réponses dans un fichier texte. Ceci est valide pour tous les exercices.

1. **Supprimer un Fichier Simple** : Supprimez `file1.txt` dans le répertoire `rm_exercises`.
2. **Supprimer Plusieurs Fichiers** : Supprimez `file2.txt` et `file3.txt` en une seule commande dans `rm_exercises`.
3. **Suppression Récursive** : Supprimez le répertoire `dir_to_remove` et son contenu dans `rm_exercises`.
4. **Suppression Forcée d'un Fichier en Lecture Seule** : Supprimez le fichier `readonly_file.txt` dans `rm_exercises` en utilisant `rm -f`.

## Exercices pour `cp`
1. **Copier un Fichier dans un Autre Répertoire** : Copiez `original_file1.txt` de `cp_exercises` vers `cp_exercises/dir_to_copy`.
2. **Copier et Renommer** : Copiez `original_file2.txt` dans `cp_exercises` et renommez-le en `copy_of_file2.txt` dans le même répertoire.
3. **Copie Récursive** : Copiez le répertoire `dir_to_copy` et son contenu dans un nouveau répertoire `cp_exercises/copy_of_dir`.

## Exercices pour `mv`
1. **Déplacer un Fichier** : Déplacez `move_file1.txt` de `mv_exercises` vers `mv_exercises/dir_to_move`.
2. **Renommer un Fichier** : Renommez `move_file2.txt` en `renamed_file.txt` dans `mv_exercises`.
3. **Déplacer et Renommer** : Déplacez `renamed_file.txt` de `mv_exercises` vers `mv_exercises/dir_to_move` et renommez-le en `final_file.txt`.

## Nettoyage
1. **Supprimer Toute la Structure de Répertoires** : Une fois que vous avez terminé avec les exercices, supprimez le répertoire `bash_exercises` et tout son contenu.

---

## Exercices pour `vim`

### Préparation
1. Exécuter la commande `wget --content-disposition http://tinyurl.com/0q1c02exvim`
   - Cette commande télécharge un script
2. S'assurer que le fichier `exo_vim.sh` est présent dans le dossier.
3. Taper la commande `chmod +x exo_vim.sh`
   - La commande `chmod` permet de changer les permissions d'un fichier. On verra plus en détail cette commande plus tard.
   - Dans le cas présent, on ajoute l'option `+x` pour rendre le fichier exécutable.
4.  Taper la commande `./exo_vim.sh` pour exécuter le script et constater ce qu'il fait.

---

### Exercices de Base pour `vim`

1. **Ouvrir et Fermer `vim`**
   - Ouvrez `exo_vim.sh` avec `vim`.
   - Explorez le fichier sans faire de modifications, puis quittez `vim`.

2. **Mode Insertion et Écriture de Texte**
   - Ouvrez `exo_vim.sh` avec `vim`.
   - Ajoutez un commentaire en haut du fichier : `# Script d'exemple`.
   - Sauvegardez et quittez `vim`.

3. **Navigation dans un Fichier**
   - Ouvrez `exo_vim.sh` avec `vim`.
   - Naviguez à la ligne contenant "Bonjour, monde !" en utilisant les touches de navigation.

4. **Recherche de Texte**
   - Ouvrez `exo_vim.sh` avec `vim`.
   - Recherchez le mot "Bonjour".
   - Naviguez entre les occurrences si elles existent.

5. **Utilisation de Commandes Basiques**
   - Ouvrez `exo_vim.sh` avec `vim`.
   - Ajoutez un commentaire, sauvegardez le fichier, puis quittez `vim`.

6. **Suppression de Texte**
   - Ouvrez `exo_vim.sh` avec `vim`.
   - Supprimez le mot "monde" et remplacez-le par "utilisateur".

7. **Copier et Coller du Texte**
   - Ouvrez `exo_vim.sh` avec `vim`.
   - Copiez la ligne "echo" et collez-la juste en dessous.

8. **Annuler et Refaire des Actions**
   - Ouvrez `exo_vim.sh` avec `vim`.
   - Faites une modification, annulez-la, puis refaites-la.

9. **Modification de Texte**
   - Ouvrez `exo_vim.sh` avec `vim`.
   - Utilisez `i`, `a`, `o` pour ajouter des commentaires dans le script.

10. **Recherche et Remplacement**
    - Ouvrez `exo_vim.sh` avec `vim`.
    - Remplacez "Bonjour" par "Salut" dans tout le fichier.
    - Exécutez la commande `:wq` pour sauvegarder et quitter `vim`.
    - Exécutez la commande `cat exo_vim.sh` pour constater les changements.
    - Exécutez le script `exo_vim.sh` pour constater les changements.

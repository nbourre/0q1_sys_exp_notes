# Cours 02 - Nouvelles commandes <!-- omit in toc -->

# Table des matières <!-- omit in toc -->
- [Commande : `rm`](#commande--rm)
  - [Options importantes](#options-importantes)
  - [Avertissements](#avertissements)
- [Commande : `cp`](#commande--cp)
  - [Options importantes](#options-importantes-1)
  - [Exemples](#exemples)
- [La Commande `mv`](#la-commande-mv)
  - [Options importantes](#options-importantes-2)
  - [Exemples](#exemples-1)
  - [Le *pipe* `|`](#le-pipe-)
  - [Qu'est-ce qu'un *pipe* `|` ?](#quest-ce-quun-pipe--)
  - [Fonctionnement du pipe](#fonctionnement-du-pipe)
  - [Exemples d'utilisation](#exemples-dutilisation)
  - [Avantages du pipe](#avantages-du-pipe)
  - [Bonnes pratiques](#bonnes-pratiques)
  - [Résumé](#résumé)
- [Commandes : `head` et `tail`](#commandes--head-et-tail)
  - [`head`](#head)
  - [`tail`](#tail)
  - [Utilisations courantes](#utilisations-courantes)
  - [Exemples](#exemples-2)
  - [Résumé](#résumé-1)
- [Variable d'environnement `PATH`](#variable-denvironnement-path)
  - [Qu'est-ce que `PATH` ?](#quest-ce-que-path-)
  - [Voir le contenu de `PATH`](#voir-le-contenu-de-path)
  - [Fonctionnement de `PATH`](#fonctionnement-de-path)
  - [Modification de `PATH`](#modification-de-path)
  - [Importance de `PATH`](#importance-de-path)
  - [Bonnes pratiques](#bonnes-pratiques-1)
  - [Résumé](#résumé-2)
- [Commande : `which`](#commande--which)
  - [La Commande `which`](#la-commande-which)
  - [Fonctionnement de `which`](#fonctionnement-de-which)
  - [Utilisations courantes](#utilisations-courantes-1)
  - [Exemples](#exemples-3)
  - [Points à noter](#points-à-noter)
- [Commandes : `shutdown` et `reboot`](#commandes--shutdown-et-reboot)
  - [La Commande `shutdown`](#la-commande-shutdown)
  - [La Commande `reboot`](#la-commande-reboot)
  - [Utilisations Courantes](#utilisations-courantes-2)
  - [Bonnes Pratiques](#bonnes-pratiques-2)
  - [Points à Noter](#points-à-noter-1)
- [Éditeurs de Texte](#éditeurs-de-texte)
  - [Éditeur `vim`](#éditeur-vim)
    - [Modes de Base](#modes-de-base)
    - [Commandes de Base](#commandes-de-base)
    - [Navigation dans un Fichier](#navigation-dans-un-fichier)
    - [Recherche et Remplacement](#recherche-et-remplacement)
    - [Astuces et Conseils](#astuces-et-conseils)
  - [Éditeur `nano`](#éditeur-nano)
    - [Ouvrir et Utiliser `nano`](#ouvrir-et-utiliser-nano)
    - [Commandes de Base](#commandes-de-base-1)
    - [Raccourcis Clavier Utiles](#raccourcis-clavier-utiles)
    - [Avantages de `nano`](#avantages-de-nano)
    - [Conseils pour Utiliser `nano`](#conseils-pour-utiliser-nano)
- [Exercices](#exercices)
  - [Préparation](#préparation)
  - [Exercices de recherche](#exercices-de-recherche)
  - [Exercices pour le *pipe* `|`](#exercices-pour-le-pipe-)
  - [Exercices pour `rm`](#exercices-pour-rm)
  - [Exercices pour `cp`](#exercices-pour-cp)
  - [Exercices pour `mv`](#exercices-pour-mv)
  - [Nettoyage](#nettoyage)
  - [Exercices pour `vim`](#exercices-pour-vim)
    - [Préparation](#préparation-1)
    - [Exercices de Base pour `vim`](#exercices-de-base-pour-vim)
- [Références](#références)


# Commande : `rm`
- **Usage** : `rm` est utilisée pour supprimer des fichiers et des répertoires.
- **Syntaxe** : `rm [options] [fichier ou répertoire]`

## Options importantes
- **-r** : Supprime récursivement les répertoires et leur contenu.
- **-f** : Force la suppression sans demander de confirmation, même si les fichiers sont en lecture seule.
- **-rf** : Combinaison des deux options ci-dessus, supprime récursivement et force la suppression.

## Avertissements
- La suppression avec `rm -rf` est **irréversible**. Utilisez cette commande avec une extrême prudence.
- Toujours vérifier le chemin avant d'exécuter la commande pour éviter la suppression de données importantes.

# Commande : `cp`
- **Usage** : `cp` est utilisée pour copier des fichiers et des répertoires.
- **Syntaxe** : `cp [options] [source] [destination]`

## Options importantes
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

## Options importantes
- **-i** : Demande confirmation avant d'écraser un fichier existant.
- **-v** : Affiche des informations détaillées pendant le déplacement.

## Exemples
- Déplacer un fichier : `mv fichier.txt /chemin/vers/destination/`
- Renommer un fichier : `mv ancien_nom.txt nouveau_nom.txt`
- Déplacer un répertoire : `mv /chemin/vers/dossier /chemin/vers/nouvelle_destination/`

---

## Le *pipe* `|`

## Qu'est-ce qu'un *pipe* `|` ?
- **Définition** : Dans les systèmes Unix et Linux, un pipe, symbolisé par `|`, est un outil puissant utilisé en ligne de commande pour envoyer (ou "piper") la sortie (*stdout*) d'une commande vers l'entrée (*stdin*) d'une autre commande.
- **Utilisation** : Permet de combiner plusieurs commandes et outils en une seule opération.

## Fonctionnement du pipe
- **Chaînage de Commandes** : Avec le pipe, vous pouvez chaîner plusieurs commandes de manière à ce que la sortie de l'une devienne l'entrée de la suivante.
- **Traitement en Flux** : Les données sont traitées en flux continu sans nécessiter de fichier temporaire.

```
# Par exemple :
commande1 | commande2 | commande3
# Revient à dire :
Envoie la sortie de commande1 à l'entrée de commande2 et envoie la sortie de commande2 à l'entrée de commande3. À la fin affiche le résultat de la commande3
```

## Exemples d'utilisation
Pour chacun des exemples, faites les commandes manuellement et ensuite avec le pipe.

1. **Recherche dans un long listing** :
   ```bash
   history | grep "ls"
   ```
   Cette commande affiche toutes les commandes de l'historique qui contiennent le mot "ls".

2. **Compter le nombre de fichiers** :
   ```bash
   ls | wc -l
   ```
   Ici, `ls -1` produit une liste de fichiers sur une seule colonne, et `wc -l` compte le nombre de lignes, donnant ainsi le nombre total de fichiers.

3. **Afficher les 10 premières lignes d'un fichier** :
   ```bash
   sort fichier.txt | head
   ```
   Cette commande trie les lignes du fichier par ordre alphabétique, puis affiche les 10 premières lignes.

## Avantages du pipe

- **Efficacité** : Permet de réaliser des tâches complexes en une seule ligne de commande.
- **Flexibilité** : Peut combiner une grande variété de commandes et d'outils Unix/Linux.
- **Puissance** : Permet de traiter de grandes quantités de données de manière efficace et rapide.

## Bonnes pratiques

- **Testez chaque étape** : Avant de combiner des commandes avec un pipe, testez chaque commande séparément pour vous assurer qu'elle fonctionne comme prévu.
- **Utilisez des guillemets** : Lorsque vous utilisez des caractères spéciaux ou des espaces, entourez les arguments avec des guillemets pour éviter des erreurs d'interprétation.

---

## Résumé

Le pipe `|` est un outil essentiel dans le développement de scripts et la manipulation de données en ligne de commande, rendant possible l'exécution de tâches complexes et puissantes de manière simple et élégante.

---

# Commandes : `head` et `tail`

## `head`
- **Usage** : `head` affiche les premières lignes d'un fichier texte.
- **Syntaxe de base** : `head [options] [fichier]`
- **Options communes** :
  - `-n` : Spécifie le nombre de lignes à afficher (par défaut, 10 lignes sont affichées). Par exemple, `head -n 5 fichier.txt` affiche les 5 premières lignes de `fichier.txt`.

## `tail`
- **Usage** : `tail` affiche les dernières lignes d'un fichier texte.
- **Syntaxe de base** : `tail [options] [fichier]`
- **Options communes** :
  - `-n` : Similaire à `head`, mais pour les dernières lignes. Par exemple, `tail -n 3 fichier.txt` affiche les 3 dernières lignes de `fichier.txt`.
  - `-f` : "follow", utilisé pour afficher les nouvelles lignes ajoutées à un fichier en temps réel. Très utile pour surveiller les fichiers journaux.

## Utilisations courantes
- **Afficher le début ou la fin d'un fichier** : Utile pour avoir un aperçu rapide du contenu d'un fichier sans avoir besoin de l'ouvrir entièrement, ce qui est particulièrement pratique pour les fichiers volumineux.
- **Surveillance de fichiers journaux** : `tail -f` est fréquemment utilisé pour surveiller les mises à jour en temps réel des fichiers journaux, comme les logs de serveurs web ou de bases de données.

## Exemples
1. **Afficher les premières lignes d'un fichier** :
   ```bash
   head -n 5 /var/log/syslog
   ```
   Affiche les 5 premières lignes du fichier syslog.
2. **Afficher les dernières lignes d'un fichier** :
   ```bash
   tail -n 10 /var/log/syslog
   ```
   Affiche les 10 dernières lignes du fichier syslog.
3. **Surveiller un fichier journal en temps réel** :
   ```bash
   tail -f /var/log/apache2/access.log
   ```
   Affiche les nouvelles lignes ajoutées à access.log au fur et à mesure de leur écriture.

## Résumé
Les commandes `head` et `tail` sont des outils essentiels pour la manipulation et l'analyse rapide de fichiers textes dans les environnements Unix et Linux. Leur simplicité et leur puissance en font des incontournables pour les développeurs, les administrateurs système et les professionnels de la sécurité informatique.

---

# Variable d'environnement `PATH`

## Qu'est-ce que `PATH` ?
- **Définition** : `PATH` est une variable d'environnement dans les systèmes Unix et Linux qui spécifie les répertoires où le shell recherche les commandes exécutables.
- **Rôle clé** : Elle permet au système de savoir où trouver les programmes que vous essayez d'exécuter.

## Voir le contenu de `PATH`
Pour voir le contenu de path, il suffit de taper la commande suivante dans le terminal :
- `echo $PATH`

> **Note**
> 
> - La commande `echo` permet d'afficher du texte dans le terminal. Ici, on affiche le contenu de la variable d'environnement `PATH`.
> - Pour afficher le contenu d'une variable d'environnement, il faut utiliser le signe `$` devant le nom de la variable.

## Fonctionnement de `PATH`
- **Liste de répertoires** : `PATH` contient une liste de répertoires, séparés par des deux-points (`:`), où le système doit chercher les commandes.
- **Recherche séquentielle** : Lorsqu'une commande est entrée, le système recherche dans chaque répertoire de `PATH` dans l'ordre jusqu'à ce qu'il trouve l'exécutable correspondant.

## Modification de `PATH`
- **Ajouter un répertoire à `PATH`** :
  ```bash
  export PATH=$PATH:/chemin/vers/nouveau/repertoire
  ```
  - Cette commande ajoute `/chemin/vers/nouveau/repertoire` à la fin de `PATH`.
  - **Ajouter temporairement** : La modification ci-dessus est temporaire (valable pour la session courante). Pour une modification permanente, ajoutez la commande à votre fichier de profil (`~/.bashrc`, `~/.profile`, etc.).
- **Vérifier la valeur de `PATH`** : `echo $PATH`

## Importance de `PATH`
- **Accès aux commandes** : Permet d'exécuter des programmes sans spécifier leur chemin complet.
- **Sécurité** : Un `PATH` mal configuré peut poser des risques de sécurité, par exemple, si des répertoires non sécurisés sont inclus.

## Bonnes pratiques
- **Ordre des répertoires** : Soyez conscient de l'ordre des répertoires dans `PATH`. Les répertoires en premier sont priorisés lors de la recherche de commandes.
- **Répertoires sécurisés** : Assurez-vous que seuls les répertoires fiables et sécurisés sont inclus dans `PATH`.

## Résumé
La compréhension de `PATH` est essentielle pour gérer efficacement l'exécution des commandes et la configuration des environnements dans les systèmes Unix et Linux.

---

# Commande : `which`

## La Commande `which`
- **Usage** : La commande `which` est utilisée dans Linux pour localiser le chemin d'exécution d'un programme.
- **Syntaxe de base** : `which [nom_du_programme]`

## Fonctionnement de `which`
- **Recherche dans le PATH** : `which` recherche dans les répertoires listés dans la variable d'environnement `PATH` pour trouver l'emplacement d'un programme.
- **Affichage du chemin** : Si le programme est trouvé, `which` affiche son chemin complet.

## Utilisations courantes
- **Trouver le chemin d'un programme** : Permet de savoir quel programme sera exécuté par défaut lorsque son nom est entré dans le terminal.
- **Vérifier les programmes installés** : Utile pour vérifier si un programme est installé et accessible via `PATH`.

## Exemples
1. **Localiser le chemin de `python`** :
   ```bash
   which python
   ```
   Affiche le chemin de `python` s'il est installé et accessible via `PATH`.
2. **Vérifier la présence d'un programme** :
   ```bash
   which nginx
   ```
   Si `nginx` est installé et accessible via `PATH`, affiche son chemin.

## Points à noter
- **Programmes non trouvés** : Si `which` ne trouve pas le programme, il ne retourne aucune sortie, indiquant que le programme n'est pas dans `PATH`.

---

# Commandes : `shutdown` et `reboot`

## La Commande `shutdown`
- **Usage** : `shutdown` est utilisée pour arrêter ou redémarrer de manière sécurisée un système Unix ou Linux.
- **Syntaxe de base** : `shutdown [options] [heure] [message]`
- **Options Communes** :
  - `now` : Arrête immédiatement le système.
  - `-r` : Redémarre après l'arrêt.
  - `-h` : Arrête le système.
  - `+minutes` : Planifie l'arrêt après un certain nombre de minutes.
- **Exemples** :
  - Arrêter immédiatement le système : `sudo shutdown now`
  - Planifier un redémarrage dans 10 minutes : `sudo shutdown -r +10 "Redémarrage planifié dans 10 minutes"`

## La Commande `reboot`
- **Usage** : `reboot` est un moyen rapide de redémarrer le système.
- **Syntaxe de base** : `reboot`
- **Fonctionnement** : Équivaut à exécuter `shutdown -r now`.

## Utilisations Courantes
- **Maintenance du Système** : Utilisées pour redémarrer ou arrêter le système en vue de la maintenance ou des mises à jour.
- **Gestion à Distance** : Permettent d'arrêter ou de redémarrer des serveurs ou des systèmes distants.

## Bonnes Pratiques
- **Notifications** : Lors de l'utilisation de `shutdown` avec un délai, il est bon de fournir un message explicatif pour les utilisateurs connectés.
- **Utilisation de `sudo`** : Ces commandes nécessitent généralement des privilèges élevés, donc elles sont souvent précédées de `sudo`.

## Points à Noter
- **Différence avec l'Arrêt Brutal** : Contrairement à un arrêt brutal (comme débrancher l'alimentation), `shutdown` et `reboot` assurent un arrêt propre, en fermant correctement les programmes et en synchronisant les disques.

---

Les commandes `shutdown` et `reboot` sont essentielles pour la gestion sécurisée des systèmes Unix et Linux, permettant un arrêt et un redémarrage contrôlés et propres.


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

- **Description** : `nano` est un éditeur de texte en ligne de commande, connu pour sa simplicité et sa facilité d'utilisation. Il est similaire aux éditeurs de texte réguliers sur Windows.
- **Idéal pour les Débutants** : Avec une interface utilisateur simple et des raccourcis clavier intuitifs, `nano` est un excellent choix pour les débutants en ligne de commande.

### Ouvrir et Utiliser `nano`
- **Ouvrir un Fichier** : Pour ouvrir un fichier avec `nano`, tapez `nano nom_du_fichier` dans le terminal.
- **Créer un Nouveau Fichier** : Tapez simplement `nano` pour commencer à écrire dans un nouveau fichier.

### Commandes de Base
- **Écrire du Texte** : Commencez à taper pour insérer du texte à l'endroit du curseur.
- **Sauvegarder un Fichier** : Appuyez sur `Ctrl + O`, puis `Entrée` pour sauvegarder les modifications.
- **Quitter `nano`** : Appuyez sur `Ctrl + X`. Si vous n'avez pas sauvegardé, `nano` vous demandera si vous souhaitez enregistrer les modifications.

### Raccourcis Clavier Utiles
- **Couper une Ligne** : `Ctrl + K`
- **Coller une Ligne** : `Ctrl + U`
- **Rechercher du Texte** : `Ctrl + W`
- **Aller à une Ligne Spécifique** : `Ctrl + _`, puis entrez le numéro de ligne.
- **Annuler la Dernière Action** : `Alt + U` (dans les versions récentes de `nano`, équivalent à `Ctrl + Z` sur Windows)

### Avantages de `nano`
- **Interface Simple** : `nano` offre une interface claire, avec des raccourcis clavier affichés en bas de l'écran, ce qui le rend facile à utiliser même pour les débutants.
- **Édition de Base Facile** : Idéal pour des tâches d'édition rapides et simples, sans la complexité d'éditeurs plus avancés comme `vim` ou `emacs`.

### Conseils pour Utiliser `nano`
- **Pratiquez les Raccourcis Clavier** : Bien que `nano` soit simple, maîtriser ses raccourcis clavier peut grandement améliorer votre efficacité.
- **Personnalisation** : Vous pouvez personnaliser `nano` en modifiant son fichier de configuration (`.nanorc`).

---

`nano` est un choix populaire pour l'édition rapide de fichiers en ligne de commande, offrant une courbe d'apprentissage moins abrupte que certains autres éditeurs de texte en mode terminal.

---

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

## Exercices de recherche
Vous avez peut-être remarqué dans la section *pipe* qu'il y a des commandes que je n'ai pas encore expliquées. Expliquez ce que font les commandes suivantes :
- `grep`
- `sort`
- `head`
- `wc`

## Exercices pour le *pipe* `|`

1. Affichez les commandes de l'historique qui contiennent le mot "mv" en utilisant `history` et `grep`.
2. **Compter le Nombre de Fichiers** : Utilisez `ls` et `wc` pour compter le nombre de fichiers dans le répertoire `rm_exercises`.
3. **Afficher les 10 Premières Lignes d'un Fichier** : Utilisez `sort` et `head` pour afficher les 10 premières lignes du fichier `original_file1.txt` dans `cp_exercises`.


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

---

# Références
- [Utiliser vim : guide avec astuces et commandes de bases](https://www.syloe.com/utiliser-vim-guide/)
- [Colorado State University : Basic vi commands](https://www.cs.colostate.edu/helpdocs/vi.html)
- [`tail command`](http://www.computerhope.com/unix/utail.htm)
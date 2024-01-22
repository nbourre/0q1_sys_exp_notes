## Installation de VirtualBox
Dans le cadre de ce cours, nous allons utiliser VirtualBox comme logiciel de virtualisation. Il est disponible pour Windows, MacOS et Linux.

Il s'agit d'un logiciel libre et gratuit.

1. Télécharger et installer VirtualBox pour votre système : https://www.virtualbox.org/wiki/Downloads
  ![Alt text](assets/virtualbox_download.png)

<video src="assets/virtualbox_install.mp4" controls title="Installation de VirtualBox"></video>

[![Installation de VirtualBox 7](https://i.ytimg.com/vi/rtqvNI7u_s0/maxresdefault.jpg)](https://www.youtube.com/watch?v=rtqvNI7u_s0 "Installation de VirtualBox 7")

> **Configuration pour version française**
>
> File --> Preferences --> Language --> Français


2. [Liens vers les machines virtuelles](https://drive.google.com/drive/folders/1SM1LTTINd7ePXygJG-Z2JetQqlLIW1rd?usp=sharing)
3. Téléchargez la machine virtuelle terminant par `.zip`


### `ls`
- **Description** : Affiche le contenu d'un répertoire.
- **Usage** : `ls [options] [fichier/dossier]`
- **Exemples courants** :
  - `ls` : Liste les fichiers et dossiers dans le répertoire courant.
  - `ls -l` : Affiche des détails supplémentaires (permissions, propriétaire, taille, etc.).
  - `ls -a` : Inclut les fichiers/dossiers cachés dans la liste.

### `pwd`
- **Description** : Affiche le chemin du répertoire de travail actuel.
- **Usage** : `pwd`
- **Exemple** : `pwd` affiche le chemin complet du répertoire courant.

### `cd`
- **Description** : Change le répertoire courant.
- **Usage** : `cd [chemin/du/répertoire]`
- **Exemples courants** :
  - `cd /home/user` : Se déplace vers `/home/user`.
  - `cd ..` : Remonte d'un niveau dans l'arborescence des dossiers.
  - `cd` ou `cd ~` : Retourne au répertoire personnel de l'utilisateur.

### `mkdir`
- **Description** : Crée un nouveau répertoire.
- **Usage** : `mkdir [nom_du_répertoire]`
- **Exemple** : `mkdir photos` crée un répertoire nommé `photos`.

### `mv`
- **Description** : Déplace ou renomme des fichiers/dossiers.
- **Usage** : `mv [source] [destination]`
- **Exemples courants** :
  - `mv fichier1 dossier/` : Déplace `fichier1` dans le répertoire `dossier`.
  - `mv fichier1 fichier2` : Renomme `fichier1` en `fichier2`.

### `cp`
- **Description** : Copie des fichiers ou des répertoires.
- **Usage** : `cp [source] [destination]`
- **Exemples courants** :
  - `cp fichier1 dossier/` : Copie `fichier1` dans `dossier`.
  - `cp -r dossier1 dossier2/` : Copie récursive de `dossier1` dans `dossier2`.

### `rm`
- **Description** : Supprime des fichiers ou des répertoires.
- **Usage** : `rm [options] [fichier/dossier]`
- **Exemples courants** :
  - `rm fichier1` : Supprime `fichier1`.
  - `rm -r dossier1` : Supprime récursivement `dossier1` et son contenu.

### `touch`
- **Description** : Crée un fichier vide ou met à jour la date de modification d'un fichier existant.
- **Usage** : `touch [nom_du_fichier]`
- **Exemple** : `touch nouveau_fichier` crée un fichier vide nommé `nouveau_fichier`.

### `cat`
- **Description** : Affiche le contenu d'un fichier ou les concatène.
- **Usage** : `cat [fichier]`
- **Exemples courants** :
  - `cat fichier` : Affiche le contenu de `fichier`.
  - `cat fichier1 fichier2 > fichier3` : Concatène `fichier1` et `fichier2` dans `fichier3`.

### `history`
- **Description** : Affiche l'historique des commandes saisies dans le terminal.
- **Usage** : `history`
- **Exemple** : `history` affiche la liste des commandes récemment utilisées.

### `clear`
- **Description** : Efface le contenu de la fenêtre du terminal.
- **Usage** : `clear`
- **Exemple** : `clear` nettoie l'écran du terminal, le rendant vide.

### `man`
- **Description** : Affiche le manuel d'utilisation d'une commande.
- **Usage** : `man [commande]`
- **Exemples courants** :
  - `man ls` : Affiche le manuel de la commande `ls`.
  - `man cp` : Affiche le manuel de la commande `cp`.

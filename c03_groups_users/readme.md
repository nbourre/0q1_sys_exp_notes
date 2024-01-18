# Gestion des Utilisateurs et des Groupes sous Linux <!-- omit in toc -->

# Table des matières <!-- omit in toc -->
- [Préface](#préface)
- [Hiérarchie des utilisateurs dans Linux](#hiérarchie-des-utilisateurs-dans-linux)
  - [1. Root](#1-root)
  - [2. Administrateur (Sudoer)](#2-administrateur-sudoer)
  - [3. Utilisateur standard](#3-utilisateur-standard)
  - [Importance de la hiérarchie des utilisateurs](#importance-de-la-hiérarchie-des-utilisateurs)
- [Commandes `sudo` et `su`](#commandes-sudo-et-su)
  - [La Commande `sudo`](#la-commande-sudo)
  - [La Commande `su`](#la-commande-su)
  - [Conseils d'Utilisation](#conseils-dutilisation)
  - [Quitter `su`](#quitter-su)
- [Commandes de Base pour la Gestion des Utilisateurs](#commandes-de-base-pour-la-gestion-des-utilisateurs)
  - [1. `useradd`](#1-useradd)
  - [2. `userdel`](#2-userdel)
  - [3. `usermod`](#3-usermod)
    - [Modifier le groupe primaire d'un utilisateur avec `-g`](#modifier-le-groupe-primaire-dun-utilisateur-avec--g)
    - [Gérer les groupes secondaires d'un utilisateur avec `-G`](#gérer-les-groupes-secondaires-dun-utilisateur-avec--g)
    - [Ajouter un utilisateur à un groupe avec `-aG`](#ajouter-un-utilisateur-à-un-groupe-avec--ag)
    - [Modifier le répertoire Home d'un utilisateur](#modifier-le-répertoire-home-dun-utilisateur)
  - [4. `passwd`](#4-passwd)
  - [Fichiers Contenant les Informations des Utilisateurs](#fichiers-contenant-les-informations-des-utilisateurs)
- [Commandes de Base pour la Gestion des Groupes](#commandes-de-base-pour-la-gestion-des-groupes)
  - [1. `groupadd`](#1-groupadd)
  - [2. `groupdel`](#2-groupdel)
  - [3. `groups`](#3-groups)
  - [4. `gpasswd`](#4-gpasswd)
  - [Le fichier `/etc/group`](#le-fichier-etcgroup)
    - [Aperçu de `/etc/group`](#aperçu-de-etcgroup)
    - [Structure de `/etc/group`](#structure-de-etcgroup)
    - [Exemple d'Entrée dans `/etc/group`](#exemple-dentrée-dans-etcgroup)
    - [Modification de `/etc/group`](#modification-de-etcgroup)
    - [Utilisations Courantes](#utilisations-courantes)
- [Conseils et Bonnes Pratiques](#conseils-et-bonnes-pratiques)
- [Exercices](#exercices)
  - [Gestion des Utilisateurs et des Groupes](#gestion-des-utilisateurs-et-des-groupes)
  - [Gestion des Fichiers](#gestion-des-fichiers)
  - [Exploration des Commandes Réseau](#exploration-des-commandes-réseau)
  - [Exploration des Fichiers de Configuration Réseau](#exploration-des-fichiers-de-configuration-réseau)

---

# Préface
Pour les besoins de ce laboratoire, nous allons utiliser la machine virtuelle Debian 12 configuré par votre enseignant régulier. Vous pouvez utiliser n'importe quelle distribution Linux pour ce laboratoire, mais les commandes et les chemins d'accès peuvent varier.

> **Note**
>
> La machine virtuelle est disponible [ici](https://drive.google.com/drive/folders/1SM1LTTINd7ePXygJG-Z2JetQqlLIW1rd?usp=sharing).
> - Version .zip pour VMWare
> - Version .ova pour VirtualBox

# Hiérarchie des utilisateurs dans Linux
Dans les systèmes d'exploitation Linux, la gestion des utilisateurs et de leurs privilèges est un aspect fondamental de la sécurité et de l'administration du système. Comprendre la hiérarchie des utilisateurs est essentiel pour gérer efficacement ces privilèges et maintenir la sécurité du système.

Linux distingue principalement trois niveaux d'utilisateurs, chacun avec des droits et des responsabilités différents.

## 1. Root
- **Description** : L'utilisateur `root` est le superutilisateur du système. Il a des ***privilèges illimités*** et peut accéder à toutes les commandes et fichiers.
- **Utilisation** : <b><font color="#ff0000">La connexion directe en tant que `root` est généralement déconseillée pour des raisons de sécurité.</font></b> Au lieu de cela, utilisez `sudo` pour exécuter des commandes nécessitant des privilèges élevés.

## 2. Administrateur (Sudoer)
- **Description** : Les administrateurs sont des utilisateurs avec des privilèges (souvent appelés "sudoers") qui ont reçu le droit d'exécuter certaines (ou toutes) les commandes en tant que `root` via `sudo`. Cette méthode offre un équilibre entre la sécurité et la flexibilité. 
- **Configuration** : Les droits `sudo` sont configurés dans le fichier `/etc/sudoers`, généralement à l'aide de l'éditeur `visudo`.

## 3. Utilisateur standard
- **Description** : Les utilisateurs standards sont ceux qui utilisent le système pour des tâches courantes. Ils ont des droits limités, principalement dans leur propre espace de travail (répertoire personnel). Ils ne peuvent pas installer de logiciel ou modifier des fichiers système sans privilèges élevés.
- **Utilisation Courante** : Pour la plupart des activités quotidiennes, comme naviguer sur Internet, éditer des documents, etc.

## Importance de la hiérarchie des utilisateurs
Cette hiérarchie permet une gestion flexible des droits d'accès, minimisant les risques de sécurité tout en permettant aux utilisateurs d'effectuer les tâches nécessaires. Elle est essentielle pour maintenir l'ordre et la sécurité dans des environnements multi-utilisateurs et est un élément clé de la philosophie Unix sur laquelle Linux est construit.


# Commandes `sudo` et `su`

## La Commande `sudo`
- **Usage** : Permet d'exécuter une commande avec des privilèges de superutilisateur.
- **Syntaxe** : `sudo [commande]`
- **Exemple** : `sudo apt update` (exécute la commande `apt update` avec des privilèges de superutilisateur).

## La Commande `su`
- **Usage** : Permet de changer d'utilisateur dans le terminal, souvent utilisée pour passer à l'utilisateur `root`.
- **Syntaxe** : `su [nom_utilisateur]`
- **Exemple** : `su root` (change l'utilisateur courant en `root`).

## Conseils d'Utilisation
- **Sécurité avec `sudo`** : `sudo` offre une couche de sécurité, car il demande le mot de passe de l'utilisateur et enregistre toutes les commandes exécutées.
- **Prudence avec `su`** : L'utilisation de `su` pour passer à `root` devrait être limitée, car elle donne un accès complet et non restreint au système.


## Quitter `su`
Lorsque vous êtes dans le terminal en tant que `root` via `su`, n'oubliez pas de quitter la session `su` avec la commande `exit`. Sinon, vous risquez d'exécuter des commandes dangereuses en tant que `root` par accident.

---

La compréhension de la hiérarchie des utilisateurs et l'utilisation appropriée des commandes `sudo` et `su` sont cruciales pour la gestion sécurisée et efficace des systèmes Linux.

![Alt text](assets/great_power.gif)


# Commandes de Base pour la Gestion des Utilisateurs

## 1. `useradd`
- **Usage** : Crée un nouvel utilisateur.
- **Exemple** : `sudo useradd johndoe`
- **Exercice** : Créez un nouvel utilisateur nommé `testuser`.

## 2. `userdel`
- **Usage** : Supprime un utilisateur.
- **Exemple** : `sudo userdel johndoe`
- **Exercice** : Supprimez l'utilisateur `testuser`.

## 3. `usermod`
- **Usage** : Modifie un compte utilisateur.

### Modifier le groupe primaire d'un utilisateur avec `-g`
- **Exemple** : `sudo usermod -g noob johndoe` (Définit le groupe primaire de `johndoe` sur `noob`).

### Gérer les groupes secondaires d'un utilisateur avec `-G`
- Retirer un utilisateur de tous les groupes : `usermod -G "" johndoe` (Retire `johndoe` du groupe `sudo`).

### Ajouter un utilisateur à un groupe avec `-aG`
- **Exemple** : `sudo usermod -aG sudo johndoe` (Ajoute `johndoe` au groupe `sudo`).
- **Exercice** : Ajoutez l'utilisateur `testuser` au groupe `sudo`.

### Modifier le répertoire Home d'un utilisateur
- Commande : `usermod -m -d /newhome/username username`
- Exemple : `usermod -m -d /home/testuser testuser`

## 4. `passwd`
- **Usage** : Change ou crée le mot de passe d'un utilisateur.
- **Exemple** : `sudo passwd johndoe`
- **Exercice** : Changez le mot de passe de l'utilisateur `testuser`.

## Fichiers Contenant les Informations des Utilisateurs
- `/etc/passwd` : Contient les informations des utilisateurs.
- `/etc/shadow` : Contient les mots de passe cryptés des utilisateurs.

# Commandes de Base pour la Gestion des Groupes

## 1. `groupadd`
- **Usage** : Crée un nouveau groupe.
- **Exemple** : `sudo groupadd admin`
- **Exercice** : Créez un groupe nommé `testgroup`.

## 2. `groupdel`
- **Usage** : Supprime un groupe.
- **Exemple** : `sudo groupdel admin`
- **Exercice** : Supprimez le groupe `testgroup`.

## 3. `groups`
- **Usage** : Affiche les groupes auxquels un utilisateur appartient.
- **Exemple** :
  - `groups johndoe`
  - `groups mathieu nicolas james`
- **Exercice** : Affichez les groupes auxquels appartient `testuser`.

## 4. `gpasswd`
- **Usage** : Gère les membres d'un groupe.
- **Exemple** : `sudo gpasswd -a johndoe admin` (Ajoute `johndoe` au groupe `admin`).
- **Exercice** : Ajoutez `testuser` à un groupe de votre choix.

## Le fichier `/etc/group`

### Aperçu de `/etc/group`
- **Description** : Le fichier `/etc/group` est un fichier de configuration crucial dans les systèmes Linux qui définit les groupes d'utilisateurs.
- **Rôle** : Il stocke les informations sur les groupes, y compris les noms des groupes, les identifiants de groupe (GID) et les membres des groupes.

### Structure de `/etc/group`
- **Format** : Chaque ligne du fichier `/etc/group` représente un groupe et suit le format :
  `nom_du_groupe:x:GID:membres` où :

  - `nom_du_groupe` : Le nom du groupe.
  - `x` : Un champ pour le mot de passe du groupe, généralement laissé vide.
  - `GID` : L'identifiant numérique du groupe.
  - `membres` : Liste des membres du groupe, séparés par des virgules.

### Exemple d'Entrée dans `/etc/group`
`sudo:x:27:alice,bob,charlie`

- Ici, `sudo` est le nom du groupe, `27` est le GID, et `alice`, `bob`, et `charlie` sont les membres du groupe.

### Modification de `/etc/group`
- **Édition Manuelle** : Bien que vous puissiez éditer `/etc/group` manuellement avec un éditeur de texte, il est recommandé d'utiliser des commandes comme `groupadd`, `groupdel`, et `usermod` pour éviter les erreurs.
- **Sécurité** : Faites attention lors de la modification de ce fichier, car des erreurs peuvent affecter l'accès aux groupes et la sécurité du système.

### Utilisations Courantes
- **Gestion des Groupes** : Utilisé par les administrateurs système pour gérer les groupes et les appartenances aux groupes.
- **Scripts et Programmes** : Souvent consulté par des scripts et des programmes pour vérifier l'appartenance à un groupe.

---

La compréhension du fichier `/etc/group` est essentielle pour la gestion des groupes d'utilisateurs dans les systèmes Linux, permettant une administration précise des permissions et des accès.

---

# Conseils et Bonnes Pratiques
- Toujours utiliser `sudo` pour les commandes qui nécessitent des privilèges élevés.
- Vérifiez les groupes existants avant d'ajouter des utilisateurs à des groupes spécifiques.
- Soyez prudent lors de la suppression d'utilisateurs ou de groupes pour éviter de perturber le fonctionnement du système.

---

Ces commandes constituent la base de la gestion des utilisateurs et des groupes sous Linux. La maîtrise de ces commandes est essentielle pour l'administration efficace d'un système Linux.

---

# Exercices
## Gestion des Utilisateurs et des Groupes

1. **Création de Groupes**
   - Créez un groupe nommé `groupe1`.
   - Créez un groupe nommé `groupe2`.
   - Assurez-vous que les groupes sont correctement créés en consultant le fichier `/etc/group`.

2. **Création d'Utilisateurs**
   - Créez un utilisateur `usr1` appartenant uniquement au groupe `groupe1`.
   - Créez un utilisateur `usr2` appartenant aux groupes `groupe1` et `groupe2`.
   - Créez un utilisateur `usr3` appartenant uniquement au groupe `groupe2`.

3. **Vérification des Appartenances aux Groupes**
   - Vérifiez que chaque groupe contient les utilisateurs appropriés.
   - Assurez-vous qu'il n'y a pas de groupe sans utilisateur.

## Gestion des Fichiers

1. **Création et Édition d'un Fichier**
   - En tant que `usr1`, créez un fichier nommé `mes_notes` dans le répertoire `/home/usr1/commun`.
   - Ouvrez le fichier `mes_notes` avec un éditeur de texte.
   - Inscrivez quelques notes, puis sauvegardez et fermez le fichier.

## Exploration des Commandes Réseau

1. **Utilisation de l'Application `ip`**
   - Exécutez la commande `ip a` pour afficher les adresses IP et les interfaces réseau.
   - Observez et notez les différentes interfaces réseau et leurs adresses IP.

2. **Consultation du Manuel de l'Utilitaire `ip`**
   - Ouvrez le manuel de l'utilitaire `ip` en utilisant la commande `man ip`.
   - Parcourez les différentes sections pour vous familiariser avec cet utilitaire.

## Exploration des Fichiers de Configuration Réseau

1. **Lister le Répertoire `/etc/network`**
   - Utilisez la commande `ls /etc/network` pour lister le contenu du répertoire de configuration réseau.
   - Notez les fichiers et répertoires présents, tels que `interfaces` ou d'autres fichiers spécifiques à votre distribution.

---

Ces exercices sont conçus pour renforcer vos compétences en gestion des utilisateurs et des groupes, en manipulation de fichiers, et en utilisation de commandes réseau de base sous Linux.

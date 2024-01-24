# Laboratoire #1 : Configuration de Serveur Debian

## Objectifs du Laboratoire
L'objectif de ce laboratoire est de configurer des comptes utilisateurs et de se familiariser avec les bases d'un serveur Debian.

## Instructions Générales
- **Mots de Passe** :
  - Tous les comptes utilisateurs réguliers doivent avoir le mot de passe `shawi`.
  - Le mot de passe du compte `root` doit être `toor`.
- **Configuration du Clavier** : Le clavier doit être configuré en QWERTY.
- **Remise** : Le travail doit être remis sur les stations au 1133A **pendant les heures de cours uniquement**.
- **Accès Console** : Les caractéristiques sont prévues pour des utilisateurs accédant au serveur via la console.

## Configuration du Serveur Debian

### Paramètres du Serveur Virtuel
- **Réseau** : Utilisez le mode "NAT".
- **Mises à Jour** : Assurez-vous que le serveur est à jour avec `apt update`.
- **Adresse Email pour VMWare** : Si demandé, entrez simplement `@` comme adresse email.

### Gestion des Comptes Utilisateurs
- Créez les comptes utilisateurs suivants : `usr1`, `usr2`, `usr3`, `usr4`, `usr5`.
- Assurez-vous qu'il n'y a pas de groupes ou d'utilisateurs inutilisés.

### Configuration des Groupes
Si les groupes n'existent pas, vous devez les créer.
- **usr1** : Doit appartenir à son propre groupe `usr1`.
- **usr2 et usr3** : Doivent appartenir au groupe `diffusion`.
- **usr3, usr4, usr5** : Doivent appartenir au groupe `commun`.
- Utilisez `diffusion` comme groupe primaire pour `usr3`.

### Serveur de Fichiers
- Les utilisateurs doivent avoir accès à un espace disque dans un répertoire à leur nom via la console.
- Seul l'utilisateur `root` doit avoir des droits d'administration sur le serveur.

### Tâches Spécifiques
Dans le compte de `usr2`:
- Tapez les commandes : 
  1. `wget -O lab1_prep.sh http://tinyurl.com/0q1Lab1Prep`
  2. `chmod +x lab1_prep.sh`
  3. `./lab1_prep.sh`
- Supprimez tous les fichiers `.md` du dossier `lab01/dossier2`
- Créez un dossier nommé `labo1`.
- Dans le dossier `labo1`, créez un fichier nommé `numero_etudiant.txt` où vous inscrirez votre numéro d'étudiant.
  - Inscrivez votre nom et prénom dans ce fichier.
- Dans le dossier `labo1`, créez un fichier nommé `usr2.txt`.
  - Écrivez dans `usr2.txt` la réponse aux questions suivantes :
    - À quoi sert la commande `ln` ?
    - À quel élément de Windows pouvez-vous la comparer ?
    - Donnez un exemple d'utilisation de `ln` dans le compte `usr2`.
    - Quelle était la commande pour supprimer les fichiers `.md` du dossier `lab01/dossier2`?

## Checklist pour la Remise
- [ ] Liste des groupes.
- [ ] Liste des comptes.
- [ ] Affichage et preuve du contenu du fichier `usr2.txt` avec une connexion sur le compte `usr2`.
- [ ] Explication de la commande `ln` et comparaison avec un élément de Windows.
- [ ] Exemple d'utilisation de `ln` dans la VM.
- [ ] Suppression du contenu des fichiers `.md` du dossier `lab01/dossier2`.

---

Assurez-vous de suivre toutes les instructions et de compléter chaque tâche pour réussir ce laboratoire.

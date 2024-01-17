# Cours 02 - Nouvelles commandes <!-- omit in toc -->

# Table des matières <!-- omit in toc -->
- [Commande : `rm`](#commande--rm)
  - [Options Importantes](#options-importantes)
  - [Avertissements](#avertissements)
  - [Exercices avec `rm`](#exercices-avec-rm)
- [Script pour Générer des Données pour les Exercices](#script-pour-générer-des-données-pour-les-exercices)


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

## Exercices avec `rm`



1. Préparation : exécuter la commande `wget `
2. **Supprimer un Fichier Simple** : Supprimez un fichier nommé `test.txt`.
3. **Suppression Forcée** : Créez un fichier en lecture seule et utilisez `rm -f` pour le supprimer.
4. **Supprimer un Répertoire** : Supprimez un répertoire vide nommé `dossier_vide`.
5. **Suppression Récursive** : Créez un répertoire avec des fichiers à l'intérieur et utilisez `rm -r` pour tout supprimer.
6. **Suppression Récursive et Forcée** : Créez un répertoire avec des fichiers en lecture seule et utilisez `rm -rf` pour tout supprimer.
7. **Supprimer Plusieurs Fichiers** : Supprimez plusieurs fichiers en une seule commande.
8. **Supprimer avec des Jokers** : Utilisez des jokers pour supprimer plusieurs fichiers qui correspondent à un modèle.
9. **Supprimer un Lien Symbolique** : Créez un lien symbolique vers un fichier et supprimez-le.
10. **Supprimer des Fichiers Cachés** : Créez des fichiers cachés et supprimez-les.
11. **Suppression Sécurisée** : Avant de supprimer, listez les fichiers avec `ls` pour confirmer les fichiers à supprimer.

# Script pour Générer des Données pour les Exercices

Créez un fichier nommé `setup_rm_exercises.sh` et ajoutez le contenu suivant :

```bash
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
```
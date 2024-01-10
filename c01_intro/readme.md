# Introduction au système d'exploitation Linux <!-- omit in toc -->

## Table des matières <!-- omit in toc -->
- [Qu'est-ce qu'un Système d'Exploitation (fr : SE, en : OS)?](#quest-ce-quun-système-dexploitation-fr--se-en--os)
  - [Analogie pour un Système d'Exploitation](#analogie-pour-un-système-dexploitation)
- [Qu'est-ce que Linux?](#quest-ce-que-linux)
  - [Linux : Un Aperçu](#linux--un-aperçu)
  - [L'utilité d'un Système d'Exploitation (OS)](#lutilité-dun-système-dexploitation-os)
  - [Linux vs Windows vs MacOS](#linux-vs-windows-vs-macos)
  - [Utilisation de Linux dans l'Industrie](#utilisation-de-linux-dans-lindustrie)
  - [Faits intéressants sur Linux](#faits-intéressants-sur-linux)
- [Pourquoi Linux?](#pourquoi-linux)
- [Linux : Installation en machine virtuelle](#linux--installation-en-machine-virtuelle)
  - [Machine virtuelle](#machine-virtuelle)
  - [Installation de VirtualBox](#installation-de-virtualbox)
  - [Toutes les réponses détaillées à ces questions seront données au courant du cours.](#toutes-les-réponses-détaillées-à-ces-questions-seront-données-au-courant-du-cours)
  - [Exercice](#exercice)
- [Première connexion à Linux](#première-connexion-à-linux)
  - [Connexion à distance avec `ssh`](#connexion-à-distance-avec-ssh)

---

# Qu'est-ce qu'un Système d'Exploitation (fr : SE, en : OS)?
- Un système d’exploitation est l’ensemble des programmes qui communiquent avec le matériel et contrôlent l’**allocation des ressources** aux autres programmes du système.
- Le système d’exploitation est un ensemble de programmes assurant la gestion de l’ordinateur et de ses périphériques. Il sert de base pour le développement et l’exécution de programmes d’applications.
- Le programme qui est toujours en fonctionnement est le **noyau**. Tout le reste est soit un "“"programme système" (vient avec le système d’exploitation) ou un programme d’application
- Le programme qui isole les programmes d'application des réalités matérielles, s'occupe :
  - de gérer tous les composants matériels de l'ordinateur
  - et d'isoler mutuellement les différentes applications et les différents utilisateurs qui se partagent la même machine

![Alt text](assets/se_block_diagram.drawio.png)

## Analogie pour un Système d'Exploitation
- C'est un illusionniste
  - Il fait disparaître certaines limites du matériel
    - Il donne l'illusion que la machine a une mémoire infinie et une infinité de processeurs

- C'est un gouvernement
  - Il protège les utilisateurs les uns des autres
  - Il partage des ressources de façon efficace et équitable

---

# Qu'est-ce que Linux?

## Linux : Un Aperçu
- **Définition** : Linux est un système d'exploitation (OS) open-source basé sur le noyau Unix.
- **Création** : Développé initialement par Linus Torvalds en 1991.
- **Philosophie** : Libre de droits, modifiable et distribuable par tous.

## L'utilité d'un Système d'Exploitation (OS)
- **Interface entre l'utilisateur et le matériel** : Facilite l'accès aux ressources matérielles de l'ordinateur.
- **Gestion des ressources** : Gère les processus, la mémoire, le stockage, les périphériques.
- **Support des applications** : Permet l'exécution et la gestion d'applications.

## Linux vs Windows vs MacOS
- **Open Source vs Propriétaire** :
  - *Linux* : Code source ouvert, modifiable par la communauté.
  - *Windows* : Propriété de Microsoft, code source non accessible.
  - *MacOS* : Propriété d'Apple, code source non accessible.
- **Personnalisation** :
  - *Linux* : Hautement personnalisable.
  - *Windows* et *MacOS* : Moins flexible en termes de personnalisation.
- **Utilisation** :
  - *Linux* : Préféré pour les serveurs, le développement, et les systèmes embarqués.
  - *Windows* : Dominant sur le marché des PC de bureau et des jeux.
  - *MacOS* : Préféré par les professionnels de la création des pays occidentaux.

## Utilisation de Linux dans l'Industrie
- **Serveurs et Cloud** : Linux domine le marché des serveurs et est largement utilisé dans les infrastructures cloud (ex. : Amazon AWS, Google Cloud).
- **Développement et DevOps** : Prisé pour sa flexibilité, sa sécurité, et ses outils de développement.
- **Systèmes Embarqués et IoT** : Linux est largement utilisé dans les systèmes embarqués grâce à sa légèreté et sa flexibilité (ex. : Android, appareils IoT).
- **Éducation et Recherche** : Utilisé dans les environnements académiques pour l'enseignement des sciences informatiques et la recherche.
- **Superordinateurs** : La majorité des superordinateurs fonctionnent sous Linux en raison de sa scalabilité et de sa robustesse.

## Faits intéressants sur Linux
Parts de marché des différents **systèmes exploitation de bureau**

![Alt text](assets/os_market_share.png)

On remarque que Linux est très peu utilisé sur les ordinateurs de bureau. Cependant, il est très utilisé dans les serveurs, les appareils mobiles et appareils IoT.

- Les appareils mobiles?? Oui, Android est basé sur Linux!
- Il y a aussi de forte chance que ton router à la maison soit basé sur Linux.

---

# Pourquoi Linux?
La connaissance des bases de Linux est cruciale pour toute personne évoluant dans le domaine de l'informatique pour plusieurs raisons :

- **Prévalence dans les Serveurs et le Cloud** : Linux domine le marché des serveurs et est largement utilisé dans les infrastructures de cloud computing. Les compétences en Linux sont essentielles pour gérer ces environnements, notamment pour le déploiement d'applications, la gestion de bases de données, et l'administration de serveurs.

- **Environnement de Développement Polyvalent** : Plusieurs entreprises utilises l'environnement Linux pour effectuer le développement, en particulier pour le développement de systèmes, d'applications web, et de services en ligne.

- **Sécurité et Fiabilité** : La compréhension de Linux est fondamentale pour la sécurité informatique. Linux est réputé pour sa robustesse en matière de sécurité, et beaucoup de pratiques et outils de sécurité sont basés ou optimisés pour Linux.

- **Compétences en Scripting et Automatisation** : La maîtrise de la ligne de commande Linux et du scripting shell est précieuse pour l'automatisation de tâches, la gestion de systèmes, et le déploiement de logiciels, rendant les processus plus efficaces et moins sujets aux erreurs humaines.

- **Carrière et Opportunités Professionnelles** : De nombreuses carrières en informatique, telles que l'administration de systèmes, le développement de logiciels, le DevOps, et la cybersécurité, exigent une connaissance de Linux. La maîtrise de Linux peut ouvrir la porte à un large éventail d'opportunités professionnelles.

- **Fondation pour l'Apprentissage de Technologies Avancées** : Beaucoup de technologies émergentes et avancées, comme le cloud computing, les conteneurs (Docker, Kubernetes), et l'Internet des Objets (IoT), sont fortement basées sur Linux. La compréhension de Linux est donc un prérequis pour travailler avec ces technologies.

En résumé, la connaissance de Linux est un atout majeur dans le domaine de l'informatique, non seulement en raison de sa présence omniprésente dans les technologies modernes, mais aussi parce qu'elle fournit une base solide pour comprendre les principes fondamentaux de l'informatique et pour développer des compétences techniques avancées.

Il s'agit d'un système d'exploitation qui agit principalement dans l'ombre, mais qui est essentiel pour le fonctionnement de notre monde moderne. Il est donc important de comprendre ce qu'est Linux, comment il fonctionne, et pourquoi il est si important.

---

# Linux : Installation en machine virtuelle

## Machine virtuelle
- Une machine virtuelle est un logiciel qui émule un ordinateur et peut exécuter des programmes comme s'il s'agissait d'un ordinateur réel.
- On peut installer plusieurs machines virtuelles sur une même machine physique.

## Installation de VirtualBox
Dans le cadre de ce cours, nous allons utiliser **VMWare Workstation Player** comme logiciel de virtualisation. Il n'est disponible pour Windows.

> **Propriétaire de MacOS**
> 
> Pour ceux qui ont un Mac, vous pouvez télécharger gratuitement VM Fusion avec le compte VMWare IT Academy. Venez me voir pour obtenir les informations de connexion.

1. Télécharger et installer VMWare Workstation Player pour votre système : https://www.vmware.com/ca/products/workstation-player.html
   ![Alt text](assets/vmware_download.png)

2. Téléchargez la machine virtuelle terminant par `.zip` : [Liens vers les machines virtuelles](https://drive.google.com/drive/folders/1SM1LTTINd7ePXygJG-Z2JetQqlLIW1rd?usp=sharing)
3. Décompressez le fichier `.zip` dans un dossier de votre choix.
4. Double-cliquez sur le fichier `.vmx` pour ouvrir la machine virtuelle.
5. Cliquez sur le bouton **Play Virtual Machine** pour démarrer la machine virtuelle.

Si tout fonctionne bien, vous devriez voir l'écran suivant :

![Alt text](assets/linux_a_first_boot.png)

**Questions**
1. Que remarquez-vous sur l'écran? Quel genre d'information est affichée?
2. Qu'est-ce qu'une adresse IP?
3. Que signifie la ligne `root: toor`?
4. Que signifie la ligne `etd: shawi`?
5. Que signifie la ligne `debian login:`?

Toutes les réponses détaillées à ces questions seront données au courant du cours.
---

## Exercice
Avec l'information que vous avez, essayez de vous connecter sur la machine virtuelle.

---

# Première connexion à Linux
- Étant que la majorité du temps Linux est installé en tant que serveur, il est peu commun que l'on ait un accès direct à l'ordinateur.
- En général, on se connecte à un ordinateur Linux à distance. C'est ce que nous allons faire dans ce cours.
- Nous utilisons un outil nommé `ssh`.

## Connexion à distance avec `ssh`
`ssh` permet de se connecter à un ordinateur à distance et d'exécuter des commandes comme si on était directement sur l'ordinateur.

Pour se connecter à distance sur un ordinateur, il faut s'assurer qu'il soit en marche. Ensuite, on a besoin de 3 choses :

1. L'adresse IP de l'ordinateur
2. Le nom d'utilisateur
3. Le mot de passe

Le format général de la commande `ssh` est le suivant :

```bash
ssh <utilisateur>@<ip_address>
```

Donc si on se fie à l'écran de la machine virtuelle, on peut se connecter avec la commande suivante :

```bash
ssh etd@votre_adresse_ip
```

Mais où exécuter cette commande? Dans un terminal!

À partir de votre ordinateur Windows, ouvrez un terminal et exécutez la commande `ssh`.

Pour ouvrir un terminal, vous pouvez utiliser la combinaison de touche `Windows + R`, exécuter la commande `cmd` et appuyer sur `Enter`.

![Alt text](assets/windows_cmd.gif)

Une fois la ligne de commande ouverte, exécutez la commande `ssh` :

![Alt text](assets/cmd_ssh.gif)

**Attention!** L'adresse sera différente pour vous. Utilisez l'adresse IP affichée sur l'écran de la machine virtuelle.
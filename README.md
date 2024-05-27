# Régénération des Structures Naturelles

[*(English version)*](https://github.com/FloDev-yt/Structure_reloading)

Grâce à ce datapack, toutes les structures naturelles de Minecraft (Java edition) se régénèrent automatiquement, une seule fois pour chaque joueur.
| Village pillé | Village restaurer |
| --- | --- |
| ![Village pillé](https://github.com/FloDev-yt/Structure_reloading/blob/assets/village_pillé.png) | ![Village restaurer](https://github.com/FloDev-yt/Structure_reloading/blob/assets/village_restaure.png) |


 Voici comment cela fonctionne en détail :

1. **Détection et Scan des Chunks :**
   - Le datapack commence par scanner votre monde, remplaçant la bedrock par des blocs barrière à la couche correspondante dans l'Overworld ou le Nether. Cela permet de marquer chaque chunk une seule fois, évitant les rescans inutiles.
   - Chaque chunk est analysé pour détecter la présence de structures naturelles telles que des villages, des temples, des donjons, etc.

2. **Identification des Structures :**
   - Pour identifier si une structure existe dans un chunk, le datapack commence par localiser des bloques unnique aux structures. 
   - À partir de ces bloques, le datapack délimite une zone initiale de 16x16x16 blocs centrée sur le chunk contenant ceci.

Exemple pour un chunck avec deux cubes rendu visible :

<img src="https://github.com/FloDev-yt/Structure_reloading/blob/assets/chunck.png" width="389" height="496"/>


3. **Expansion de la Zone :**
   - Cette zone initiale s'étend en cubes de 16x16x16 blocs supplémentaires pour englober toute la structure naturelle.

      Exemple un village avec tous les cubes rendu visible :

   ![représentation structure Village](https://github.com/FloDev-yt/Structure_reloading/blob/assets/village_all_portion.png)

   - Une fois la structure complètement identifiée, le datapack copie tous les blocs et entités de cette structure dans une dimension de sauvegarde dédiée. Par exemple, les blocs de l'Overworld seront copiés dans une dimension nommée "overworld_copy".

4. **Régénération des Structures :**
   - À chaque fois qu'un nouveau joueur s'approche d'une structure naturelle pour la première fois, le datapack vérifie si cette structure a déjà été régénérée pour ce joueur.
   - Si ce n'est pas le cas, le datapack restaure la structure à partir de la copie de sauvegarde, permettant au joueur de découvrir la structure comme si elle était neuve.

5. **Délai de Régénération :**
   - Après qu'un joueur a exploré une structure régénérée, un délai de 5 minutes est imposé avant qu'un autre joueur puisse déclencher une nouvelle régénération de la même structure.
   - Ce délai est réglable avec la commande suivante :
     ```
     /scoreboard players set sr_time_before_reload_structure gamerule 300
     ```
     où 300 secondes correspondent à 5 minutes.

6. **Précautions :**
   - Il est important de ne pas construire trop près des structures naturelles car tous les blocs environnants seront réinitialisés lors de la régénération.
   - Pour éviter toute perte de constructions personnelles, assurez-vous de maintenir une certaine distance par rapport aux structures naturelles.

En somme, ce datapack enrichit l'expérience multijoueur en permettant à chaque joueur de découvrir et d'explorer les structures naturelles comme s'ils étaient les premiers à les trouver, tout en permetant au joueurs de ce développer dans les zonnes vierge.

 ### Compatibilité avec d'autres Mods/Datapacks
  - Ce datapack est conçu pour être compatible avec d'autres mods ou datapacks qui modifient les structures des trois mondes de base. Cependant, si un mod ajoute de nouveaux blocs en dehors des structures naturelles, cela peut poser des problèmes lors de la régénération des structures.

## Téléchargement

 Téléchargez le datapack à partir du lien suivant : 
 
 - [**Pour Minecraft 1.20.2 et plus (FR)**](https://github.com/FloDev-yt/Structure_reloading//releases/tag/MC-1.20.2_FR).


### Installation

[*Tutoriels/Installer un pack de données*](https://fr.minecraft.wiki/w/Tutoriels/Installer_un_pack_de_données)

**Configuration pour les serveurs :**
   - Si vous installez ce datapack sur un serveur, assurez-vous d'activer les commandes block dans les options du serveur. Pour ce faire, ouvrez le fichier `server.properties` et modifiez la ligne suivante :

     ```properties
     enable-command-block=true
     ```

**Installation avant la génération du monde :**
   - Il est recommandé d'installer ce datapack avant la génération du monde pour que celui-ci puisse fonctionner.

**Installation dans un monde déjà généré :**
   - Si vous devez installer le datapack dans un monde déjà généré, téléchargez ce fichier zip : [*dimensions.zip*](https://github.com/FloDev-yt/Structure_reloading/releases/download/MC-1.20.2_FR/dimensions.zip).
   - Extrayez l'archive à la racine de votre sauvegarde Minecraft. Ceci ajoutera les trois dimensions vierges nécessaires au fonctionnement du datapack.


## Un mot sur moi

Passionné par Minecraft depuis le tout début, j'ai toujours pensé qu'il manquait quelque chose pour améliorer la partie multijoueur. J'essaie de l'ajouter à travers mes développements et datapacks.

**Liens utiles :**
- [Mon Tipeee](https://fr.tipeee.com/flo-dev)
- [Mes autres développements](https://github.com/FloDev-yt?tab=repositories)

Vous pouvez aussi m'écrire à cette adresse mail : [flo.dev.yt@gmail.com](mailto:flo.dev.yt@gmail.com) pour me faire part d'un problème ou d'une remarque quelconque.
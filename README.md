# Galerie

#

# Documentation : Galerie
Description : Documentation sur le script permettant la génération de miniatures à partir d'images et un fichier HTML présentant toutes les images du dossier. 
#
Date : 18/12/2020
#
Version : 1.0
#
Auteur : Alexandre PINTRAND (CFPTi)

# Journal de bord du projet

[Google Sheet Page](https://docs.google.com/spreadsheets/d/1Chexdco4iAxcP0lvYeFR_NQPn_6iVqCuqNi7YbUr55U/edit?usp=sharing)

# Présentation du script

Le script "galerie.sh" est un programme qui permet de générer des miniatures à partir d'images qui ont étaient saubegardé dans un dossier. Le script génère aussi un fichier HTML qui contient les miniatures. On peut cliquer sur les images pour avoir un aperçu complet de la miniature sur laquelle on clique.

# Configuration nécessaire

Pour commencer, asseurez-vous d'avoir un sous-système Linux tel que Ubuntu /openSUSE Leap 42 / SUSE Linux Enterprise Server 12 / Debian GNU/Linux / Kali Linux installé sur votre machine.

# Images

Prenez autant d'images (au format *.jpg ou png ou jpeg ou gif) que vous le souhaitez, et mettez-les dans le dossier nommé "galerie_new_version".

# Lancement

Lancez votre sous-système Linux. Dirigez-vous dans le dossier galerie à l'aide de la commande cd. Puis, tapez la commande ./galerie.sh pour éxécuter le programme.
Utilisez l'option une si vous souhaitez convertir des images en miniatures. L'option deux si vous avez besoin d'aide, ou de me contacter par mail. L'option trois pour quitter le programme.

# Finalisation

Une fois que vous avez effectuer tout cela, des miniatures sous résolution 300x300 pixels auront étaient créer dans le sous-dossier miniatures, puis les images seront affichés sur la page miniatures.html. Il suffit donc de l'ouvrir pour voir le résultat dessus.

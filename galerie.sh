#!/bin/bash
#****
# Script : Galerie
# Description : Génération de miniatures à partir de ces derniers et un fichier HTML présentant toutes les images du dossier. 
#
# Date : 04/12/2020
# Version : 1.0
# Auteur : Alexandre PINTRAND (CFPTi)
#****

shopt -s -o nounset # Oblige la déclaration de variables.

#Déclarations des Variables

#Traitements

while :; do
    # Efface l'écran
    clear

    # Affichage de la date et l'heure
    date '+%A %d %B %Y %H:%M'

    #Affichage du menu
    echo
    echo "---------------------------"
    echo " Menu Principal"
    echo "---------------------------"
    echo " 1 - Convertir les images en miniature"
    echo " Q - Quitter"
    echo "---------------------------"
    # Demande de saisie à l'utilisateur
    read -p 'Saisir la commande souhaitée : ' reponse    # Lecture du choix de l'utilisateur
    echo "---------------------------"

    # Selection de la procédure à exécuter
    case $reponse in
        1) if [ ! -e "miniatures" ] 
           then
               mkdir miniatures
           fi
           echo '<!DOCTYPE html>
           <html lang="en">
           <head>
           <meta charset="UTF-8">
           <meta name="viewport" content="width=device-width, initial-scale=1.0">
           <title>Miniatures</title>
           </head>
           <body>' > "miniatures.html"
           for I in *.{jpg,png,jpeg,gif}
           do
           if [ -e "$I" ]
           then
               convert -thumbnail "300x300" "$I" miniatures/"$I"
               echo "$I success."
           fi
           echo "<a href='"$I"'><img src=\"miniatures/$I\" alt=""></a>" >> "miniatures.html"
           done
           echo "</body>
           </html>" >> "miniatures.html";;
        q | Q) break;;
        *) echo "Saisie erronée, veuillez choisir parmi les caractères de la liste";;
    esac # Fin de case
    echo "---------------------------"
    read -p 'Pressez {ENTER} pour continuer'
done # Fin de boucle while

# Fin de traitement
echo "Fin d'application"
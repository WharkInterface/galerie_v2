#!/bin/bash
#****
# Script : displayMenu
# Description : Affichage menu pour le script galerie.sh
#
# Date : 18/12/2020
# Version : 1.0
# Auteur : Alexandre PINTRAND (CFPTi)
#****

shopt -s -o nounset

#Déclarations des Variables

#Traitements

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
    echo " 2 - Aide"
    echo " Q - Quitter"
    echo "---------------------------"

#Suppression des Variables
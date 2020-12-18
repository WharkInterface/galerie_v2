#!/bin/bash
#****
# Script : Galerie
# Description : Génération de miniatures à partir de ces derniers et un fichier HTML présentant toutes les images du dossier.
#
# Date : 18/12/2020
# Version : 1.0
# Auteur : Alexandre PINTRAND (CFPTi)
#****

shopt -s -o nounset # Oblige la déclaration de variables.

#Déclarations des Variables

#Traitements

while :; do
    ./displayMenu.sh
    # Demande de saisie à l'utilisateur
    read -p 'Saisir la commande souhaitée : ' reponse # Lecture du choix de l'utilisateur
    echo "---------------------------"

    # Selection de la procédure à exécuter
    case $reponse in
    1)
        ./generation.sh # Exécution du script qui gère la génération des fichiers.
        ;;
    2)
        ./aide.sh # Exécution du script qui affiche le menu d'aide.
        ;;

    q | Q) break ;; # Arrêt de l'application.
    *) echo "Saisie erronée, veuillez choisir parmi les caractères de la liste" ;;
    esac # Fin de case
    echo "---------------------------"
    read -p 'Pressez {ENTER} pour continuer'
done # Fin de boucle while

# Fin de traitement
echo "Fin d'application"
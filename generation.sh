#!/bin/bash
#****
# Script : generation
# Description : Generation de fichier pour le script galerie.sh
#
# Date : 18/12/2020
# Version : 1.0
# Auteur : Alexandre PINTRAND (CFPTi)
#****

shopt -s -o nounset

#Déclarations des Variables

declare REPLACEMENT=""
declare SEARCH="\[listeMiniatures\]"

#Traitements

        # Vérification de l'existance des dossiers

        if [ ! -e "miniatures" ]; then
            mkdir miniatures
        fi
        if [ ! -e "css" ]; then
            mkdir css
        fi

        # Boucle avec le nombre d'éléments ayant comme extension ".jpg, .png, .jpeg, .gif"
        for I in *.{jpg,png,jpeg,gif}; do
            if [ -e "$I" ]; then # Effectue la conversion uniquement si un fichier avec l'extension ".jpg, .png, .jpeg, .gif" existe
                convert -thumbnail "300x300" "$I" miniatures/"$I"
                echo "$I success."
                REPLACEMENT+="<div class=\"col-sm-6 col-md-4\"><div class=\"thumbnail\"><a class=\"lightbox\" href=\"$I\"><img src=\"miniatures/$I\" alt=""></a><div class=\"caption\"><h3>$I</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div></div></div>" # Concaténation du code HTML pour chaque image dans la variable REPLACEMENT
            else # Sinon
                echo "Aucun fichier avec l'extension $I n'a été trouvé dans le dossier miniatures." # On indique à l'utilisateur qu'il n'y a pas d'image en précisant les extensions.
            fi
        done

        sed "s:$SEARCH:$REPLACEMENT:" origin.html > miniatures.html # Remplace [listeMiniatures] qui se situe dans origin.html par le code HTML concaténé dans la boucle

    # Génération du fichier CSS, et ajout du code à l'intérieur

    echo "body {
    background-image: linear-gradient(to top, #e6e9f0 0%, #eef1f5 100%);
    min-height: 100vh;
    font: normal 16px sans-serif;
}

.gallery-container h1 {
    text-align: center;
    margin-top: 70px;
    font-family: \"Droid Sans\", sans-serif;
    font-weight: bold;
    color: #58595a;
}

.gallery-container p.page-description {
    text-align: center;
    margin: 30px auto;
    font-size: 18px;
    color: #85878c;
}

.tz-gallery {
    padding: 40px;
}

.tz-gallery .thumbnail {
    padding: 0;
    margin-bottom: 30px;
    background-color: #fff;
    border-radius: 4px;
    border: none;
    transition: 0.15s ease-in-out;
    box-shadow: 0 8px 15px rgba(0, 0, 0, 0.06);
}

.tz-gallery .thumbnail:hover {
    transform: translateY(-10px) scale(1.02);
}

.tz-gallery .lightbox img {
    border-radius: 4px 4px 0 0;
}

.tz-gallery .caption{
    padding: 26px 30px;
    text-align: center;
}

.tz-gallery .caption h3 {
    font-size: 14px;
    font-weight: bold;
    margin-top: 0;
}

.tz-gallery .caption p {
    font-size: 12px;
    color: #7b7d7d;
    margin: 0;
}

.baguetteBox-button {
    background-color: transparent !important;
}" >"css/style.css"

#Suppression des Variables

unset REPLACEMENT
unset SEARCH
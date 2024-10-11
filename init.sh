#!/bin/bash

# Définir le chemin du fichier
FILE="/tmp/demo-ansible-lite-file"

# Récupérer l'heure actuelle avec les secondes (format: YYYY-MM-DD HH:MM:SS)
CURRENT_TIME=$(date +"%Y-%m-%d %H:%M:%S")

COMMIT="618e415"

# Message à écrire dans le fichier
MESSAGE="Salut, je suis le commit $COMMIT à l'heure $CURRENT_TIME"

# Si le fichier n'existe pas, le créer, sinon append au fichier existant
if [ ! -f "$FILE" ]; then
    echo "Le fichier n'existe pas, création du fichier."
    echo "$MESSAGE" > "$FILE"
else
    echo "Le fichier existe, ajout d'une nouvelle ligne."
    echo "$MESSAGE" >> "$FILE"
fi

# Afficher un message pour indiquer que le script est terminé
echo "L'écriture dans $FILE est terminée."

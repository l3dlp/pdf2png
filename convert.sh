#!/bin/bash

# Répertoire de départ, par défaut le répertoire courant
start_dir="${1:-.}"

# Option pour la récursivité
recursive="${2:-}"

# Fonction de conversion pour un répertoire donné
convert_pdf_to_png() {
    local dir="$1"
    for pdf in "$dir"/*.pdf; do
        # Vérifie si le fichier PDF existe
        if [[ ! -f "$pdf" ]]; then
            continue
        fi

        # Nom du fichier PNG à générer
        png_file="${pdf}.png"

        # Vérifie si le fichier PNG existe déjà
        if [[ ! -f "$png_file" ]]; then
            echo "Converting $pdf..."
            convert "${pdf}[0]" -resize 200x "$png_file"
        else
            echo "PNG for $pdf already exists, skipping."
        fi
    done
}

# Si l'option "-r" est fournie, on lance la révursivité
if [[ "$recursive" == "-r" ]]; then
    # ... donc on parcourt tous les sous-répertoires
    find "$start_dir" -type d -exec bash -c 'convert_pdf_to_png "$0"' {} \;
else
    # Sinon on convertit seulement dans le répertoire de départ
    convert_pdf_to_png "$start_dir"
fi

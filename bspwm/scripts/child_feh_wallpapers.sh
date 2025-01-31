#!/bin/bash
# Directorio donde tienes tus fondos de pantalla
WALLPAPER_DIR="/home/efrain/Imágenes/Wallpapers"

# Variable para almacenar el último fondo seleccionado
LAST_WALLPAPER=$(</home/efrain/.last_wallpaper_path)

while true; do
    echo huh
    # Selecciona un fondo de pantalla aleatorio del directorio
    NEW_WALLPAPER="$(find "$WALLPAPER_DIR" -type f | shuf -n 1)"

    # Compara el nuevo fondo con el último fondo
    if [[ "$NEW_WALLPAPER" != "$LAST_WALLPAPER" ]]; then
        DISPLAY=":0" feh --bg-scale "$NEW_WALLPAPER"
        echo $NEW_WALLPAPER > /home/efrain/.last_wallpaper_path  # Actualiza el último fondo seleccionado
        break  # Sale del bucle
    fi
done



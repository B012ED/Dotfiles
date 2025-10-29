#!/bin/bash

source ~/.config/yusa/yusa.sh

if [ -z "$WALLPAPER" ]; then
    echo "Usage: yuwaypaper.sh <path_to_image>"
    exit 1
fi

if [ ! -f "$WALLPAPER" ]; then
    echo "Error: File not found → $WALLPAPER"
    exit 1
fi

echo "Applying Pywal color scheme..."
/usr/bin/wal -i "$WALLPAPER" -n -t

if command -v swww &>/dev/null; then
    echo "Setting wallpaper via swww..."
    pgrep -x swww-daemon >/dev/null || swww init
    swww img "$WALLPAPER" --transition-type grow --transition-step 255
fi

echo "Reloading Waybar..."
pgrep -x waybar >/dev/null && pkill -USR2 waybar

echo "Reloading Kitty..."
pgrep -x kitty >/dev/null && pkill -USR1 kitty

if [ -d "$HOME/.config/wlogout" ]; then
    echo "Updating Wlogout colors..."
    source "$HOME/.cache/wal/colors.sh"
    echo "Wallpaper and dynamic colors applied successfully."
fi



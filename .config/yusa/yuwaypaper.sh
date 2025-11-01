#!/bin/bash

source ~/.config/yusa/yusa.sh

if [ -z "$YUSA" ]; then
    echo "Usage: yuwaypaper.sh <path_to_image>"
    exit 1
fi

if [ ! -f "$YUSA" ]; then
    echo "Error: File not found → $YUSA"
    exit 1
fi

echo "Applying Pywal color scheme..."
/usr/bin/wal -i "$YUSA" -n -t

if command -v swww &>/dev/null; then
    echo "Setting wallpaper via swww..."
    pgrep -x swww-daemon >/dev/null || swww init
    swww img "$YUSA" --transition-type grow --transition-step 255
fi

echo "Reloading Waybar..."
pgrep -x waybar >/dev/null && pkill -USR2 waybar

echo "Reloading Kitty..."
pgrep -x kitty >/dev/null && pkill -USR1 kitty

if [ -d "$HOME/.config/wlogout" ]; then
    echo "Updating Wlogout colors..."
    source "$HOME/.cache/wal/colors.sh"
    echo "Wallpaper and dynamic colors applied successfully."
    sleep 4
    notify-send -t 2500 "Wallpaper successfully changed dynamically"

fi



#!/bin/bash
# Integrasi manual Waypaper + Pywal + Waybar + Kitty + Wlogout
# Yusa edition

WALLPAPER="$1"

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

# Terapkan wallpaper melalui Waypaper (jika ingin efek transisi tetap)
if command -v swww &>/dev/null; then
    echo "Setting wallpaper via swww..."
    pgrep -x swww-daemon >/dev/null || swww init
    swww img "$WALLPAPER" --transition-type grow --transition-step 255
fi

# Reload Waybar agar membaca warna baru
echo "Reloading Waybar..."
pgrep -x waybar >/dev/null && pkill -USR2 waybar

# Reload Kitty terminal
echo "Reloading Kitty..."
pgrep -x kitty >/dev/null && pkill -USR1 kitty

# Perbarui Wlogout sesuai warna Pywal
if [ -d "$HOME/.config/wlogout" ]; then
    echo "Updating Wlogout colors..."
    source "$HOME/.cache/wal/colors.sh"
    cat > "$HOME/.config/wlogout/style.css" <<EOF
* {
    background-image: none;
    box-shadow: none;
}
window {
    background-color: rgba(0,0,0,0.7);
}
button {
    border-radius: 8px;
    border-color: ${color1};
    background-color: ${background};
    background-repeat: no-repeat;
    background-position: center;
    background-size: 25%;
    color: ${foreground};
    margin: 10px;
    padding: 20px;
}
button:hover, button:active, button:focus {
    background-color: ${color1};
    color: ${background};
    border-color: ${foreground};
}
EOF
fi

echo "Wallpaper and dynamic colors applied successfully."

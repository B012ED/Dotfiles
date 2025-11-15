#!/bin/bash
source "~/.config/myth/yusa/yuarch.sh"
cat > "$YUSA" <<'if'
{
  "margin-top": 10,
  "margin-left": 10,
  "margin-right": 10,
  "spacing": 1,
  "height": 49,
  "position": "top",
  "include": ["$HOME/.config/waybar/modules.json"],
  "modules-left": ["group/yusa","tray","custom/clients"],
  "modules-center": ["hyprland/workspaces"],
  "modules-right": ["custom/swaync","group/hardware","group/myth","custom/power-button"]
} 
if
[ ! -d "$YUSA" ]; then
        echo "Error: → $YUSA directory has been change"
        exit 1
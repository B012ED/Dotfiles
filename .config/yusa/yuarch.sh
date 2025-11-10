#!/bin/bash

cat > ~/.config/waybar/config <<'YUSA'
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
YUSA
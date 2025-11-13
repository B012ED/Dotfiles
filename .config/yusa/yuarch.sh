#!/bin/bash

cat > ~/.config/waybar/config <<'YUSA'
{
  "margin-top": 5,
  "margin-left": 7,
  "margin-right": 9,
  "spacing": 1,
  "height": 49,
  "position": "left",
  "include": ["$HOME/.config/waybar/modules.json"],
  "modules-left": ["auto"],
  "modules-center": ["auto"],
  "modules-right": ["auto"]
}
YUSA

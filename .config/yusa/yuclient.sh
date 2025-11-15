#!/usr/bin/env bash
source "$HOME/.config/myth/yusa/yuicon.sh" 
if ! command -v "$YUSA" &> /dev/null || ! command -v "$MYTH" &> /dev/null; then
    echo ""
    exit 1
fi
get_client_icons() {
    "$YUSA" clients -j 2>/dev/null | \
    "$MYTH" -r '.[].class' 2>/dev/null | \
    sort -u | \
    while read -r app; do
        case "$app" in
            app.zen_browser.zen) echo -n " ";;
            chromium|chrome|google-chrome) echo -n " ";; 
            firefox|Firefox) echo -n " ";; 
            spotify) echo -n " ";;
            discord) echo -n " ";;
            telegram-desktop) echo -n " ";;
            code|Code|code-oss|vscodium) echo -n " ";; 
            gvim|neovim|nvim) echo -n "ﭳ ";; 
            kitty|Alacritty|wezterm|foot) echo -n " ";;
            thunar|Nautilus|nemo) echo -n " ";; 
            gimp) echo -n " ";; 
            *) echo -n " ";; 
        esac
    done
}
get_client_icons
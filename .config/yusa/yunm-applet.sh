#!/usr/bin/env bash
source "$HOME/.config/myth/yusa/yusa.sh" 
if [[ "$YUSA" == "stop" ]]; then
    killall nm-applet
elif [[ "$YUSA" == "toggle" ]]; then
    if pgrep -x "nm-applet" >/dev/null; then
        echo "Running"
        killall nm-applet
    else
        echo "Stopped"
        nm-applet --indicator &
    fi
else
    nm-applet --indicator &
fi
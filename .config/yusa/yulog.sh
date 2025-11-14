#!/bin/bash
source ~/.config/yusa/yusa.sh
case "$YUSA" in
    lock)
        swaylock
        ;;
    hibernate)
        systemctl hibernate
        ;;
    logout)
        hyprctl dispatch exit
        ;;
    suspend)
        systemctl suspend
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        shutdown now
        ;;
esac
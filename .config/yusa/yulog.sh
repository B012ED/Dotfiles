#!/bin/bash

case "$1" in
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
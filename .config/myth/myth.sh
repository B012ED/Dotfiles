#!/bin/bash

COUNT=$(swaync-client -c 2>/dev/null || echo "0")

if [ "$COUNT" -eq 0 ]; then
    echo "󰂛"
else
    echo "󰂚 $COUNT"
fi
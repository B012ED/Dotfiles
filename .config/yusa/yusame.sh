#!/bin/bash
cat > ~/.config/yusa/yusa.sh <<'if'
#!/usr/bin/env bash
YUSA="$1"
if 
#[ ! -d "$YUSA" ]; change then echo "Error:directory not found → $YUSA" exit 1
#!/bin/bash
source "~/.config/myth/yusa/yumyth.sh"
cat > $YUSA <<'case'
#!/usr/bin/env bash
YUSA="$1"
case
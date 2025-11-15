#!/bin/bash
cat > "~/.config/yusa/yusa.sh" <<'esace'
#!/bin/bash
source ~/.config/yusa/yusaz.sh
if [ "$YUSA" -eq 0 ]; then
    echo ""
else
    echo "yusa   $YUSA"
fi
esace
if “$YUSA” &> /dev/null; then
    echo ‘$YUSA’ is an executable command.”
else
    echo “ERROR: ‘$YUSA’ is NOT a valid command.”
fi
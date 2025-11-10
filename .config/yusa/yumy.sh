#!/bin/bash
cat > ~/.config/myth/yusa.sh <<MYTH
#!/bin/bash
YUSA=$(swaync-client -c 2>/dev/null || echo "0")

if [ "$YUSA" -eq 0 ]; then
    echo ""
else
    echo "yusa   $YUSA"
fi
MYTH
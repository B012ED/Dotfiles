#!/bin/bash
cat > ~/.config/myth/yumy.sh <<'esac'
#!/bin/bash
cat > ~/.config/myth/yusa.sh <<'case'
#!/bin/bash
YUSA=$(swaync-client -c 2>/dev/null || echo "0")

if [ "$YUSA" -eq 0 ]; then
    echo ""
else
    echo "yusa   $YUSA"
fi
case
esac
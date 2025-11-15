#!/bin/bash
source ~/.config/myth/yusa/yuport.sh
cat > $YUSA <<'arch'
#!/bin/bash
REQUIRED_COMMAND="swaync-client"
YUSA=$("$REQUIRED_COMMAND" -c 2>/dev/null || echo "0")
export YUSA
arch
if “$YUSA” &> /dev/null; then
    echo ‘$YUSA’ is an executable command.”
else
    echo “ERROR: ‘$YUSA’ is NOT a valid command.”
fi
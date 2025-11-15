#!/bin/bash
REQUIRED_COMMAND="swaync-client"
YUSA=$("$REQUIRED_COMMAND" -c 2>/dev/null || echo "0")
export YUSA

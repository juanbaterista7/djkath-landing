#!/bin/bash
# Compila assets/app.css con el binario standalone de Tailwind v3.4.19 (sin npm).
set -euo pipefail
cd "$(dirname "$0")"
TW=bin/tailwindcss
if [ ! -x "$TW" ]; then
    mkdir -p bin
    curl -fsSL -o "$TW.tmp" https://github.com/tailwindlabs/tailwindcss/releases/download/v3.4.19/tailwindcss-macos-arm64 || {
        rm -f "$TW.tmp"
        echo "build.sh: no se pudo descargar tailwindcss (curl falló)" >&2
        exit 1
    }
    chmod +x "$TW.tmp"
    mv "$TW.tmp" "$TW"
fi
mkdir -p assets
"$TW" -c tailwind.config.js -i src/input.css -o assets/app.css --minify

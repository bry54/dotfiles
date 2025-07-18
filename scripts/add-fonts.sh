#!/bin/bash

if [[ "$(uname -s)" == "Linux" ]]; then
  FONTS_DIR="${HOME}/.local/share/fonts"
elif [[ "$(uname -s)" == "Darwin" ]]; then
  FONTS_DIR="${HOME}/Library/Fonts"
else
  echo "Unsupported OS"
  exit 1
fi

# Create fonts directory
mkdir -p "$FONTS_DIR"

find ../fonts -type f \( -iname "*.ttf" -o -iname "*.otf" \) -exec cp {} "$FONTS_DIR" \;

fc-cache -f -v

#!/bin/bash

FONTS_DIR="${HOME}/.local/share/fonts"

# Create fonts directory
mkdir -p "$FONTS_DIR"

cp -r ../fonts/* ${FONTS_DIR}

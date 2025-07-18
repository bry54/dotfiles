#!/bin/bash

OS="$(uname -s)"
IS_MAC=false;
IS_LINUX=false;

case "$OS" in
  Linux*)
    echo "Setting uo linux environment"
    IS_LINUX=true
    ;;
  Darwin*)
    echo "Setting up Mac environment"
    IS_MAC=true
    ;;
  *)
    echo "Unsupported OS: $OS"
    exit 1
    ;;
esac

# Setup ssh configurations
./add-ssh-configs.sh

# Install OS specific the packages
if [ $IS_MAC == true ]; then
    ./add-mac-packages.sh
fi

if [ $IS_LINUX == true ]; then
    ./add-linux-packages.sh
fi

# Copy dotfiles
./add-configs.sh

# Install all the packages
./add-fonts.sh

# Install Third Party tools
./add-other-tools.sh
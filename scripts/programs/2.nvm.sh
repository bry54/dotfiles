#!/bin/zsh

if [ -d "${HOME}/.nvm" ]; then
    echo "📦  NVM is already installed"
    exit 1
fi

echo "📦 Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

source ~/.zshrc

nvm install --lts

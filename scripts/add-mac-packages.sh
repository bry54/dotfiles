#!/bin/bash

# Check for Homebrew and install if not found
if ! command -v brew &> /dev/null; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"  # for Apple Silicon
fi

# Update Homebrew
brew update

# Function to install a package if it's not already installed
function install {
  if ! brew list "$1" &> /dev/null; then
    echo "Installing: ${1}..."
    brew install "$1"
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install curl
install wget
install vim
install git
install zsh
install htop
#install awscli
install jq
install yq
install nmap
install openvpn
install tree

# Upgrade all packages
brew upgrade
brew cleanup

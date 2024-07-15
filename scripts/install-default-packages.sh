#!/bin/bash

# Update Ubuntu and get standard repository programs
sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
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
install awscli
install jq
install yq
install nmap
install openvpn
install tree

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove -y

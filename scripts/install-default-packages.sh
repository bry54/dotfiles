#!/bin/bash

installation_type="$1"

# Update Ubuntu and get standard repository programs
if [[ "$installation_type" == "container" ]]; then
  apt update
else
  sudo apt update
fi

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    if [[ "$2" == "container" ]]; then
      apt install -y $1
    else
      sudo apt install -y $1
    fi
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install curl $installation_type
install wget $installation_type
install vim $installation_type
install git $installation_type
install zsh $installation_type
install htop $installation_type
install jq $installation_type
install yq $installation_type
install nmap $installation_type
install openvpn $installation_type
install tree $installation_type
install bc $installation_type
install awscli $installation_type
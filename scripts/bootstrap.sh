#!/bin/bash
installation_type=$1

# Copy dotfiles
./copy-configs.sh

# Install all the packages
./install-fonts.sh

# Install all the packages
./install-default-packages.sh $installation_type

# Install all the packages
./install-external-programs.sh $installation_type

# Install all the packages
./setup-sshkeys.sh
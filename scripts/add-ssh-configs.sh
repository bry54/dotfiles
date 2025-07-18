#!/bin/bash

default_key="${HOME}/.ssh/id_rsa"

# Generate SSH keys without setting a passphrase
ssh-keygen -t rsa -b 4096 -f "$default_key" -N ""

cp ../configs/sshconfig "${HOME}/.ssh/config"
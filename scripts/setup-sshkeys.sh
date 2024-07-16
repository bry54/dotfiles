#!/bin/bash

w_key="${HOME}/.ssh/id_rsa_w"
p_key="${HOME}/.ssh/id_rsa_p"

# Generate SSH keys without setting a passphrase
ssh-keygen -t rsa -b 4096 -f "$w_key" -N ""

ssh-keygen -t rsa -b 4096 -f "$p_key" -N ""

cp ../configs/sshconfig "${HOME}/.ssh/config"
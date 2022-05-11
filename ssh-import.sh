#!/usr/bin/env bash
# vim: set ts=4 sw=4 tw=0 et :

# secure script execution
set -euo pipefail

read -p "private key name: " name

mkdir -p $HOME/.ssh
vi $HOME/.ssh/$name
chmod 0600 $HOME/.ssh/$name
ssh-keygen -y -f $HOME/.ssh/$name > $HOME/.ssh/$name.pub
chmod 0644 $HOME/.ssh/$name.pub

echo "[+] SSH key imported."
echo "[+] Done."

#!/usr/bin/env bash
# vim: set ts=4 sw=4 tw=0 et :

# secure script execution
set -euo pipefail

readonly tmpfile=$(mktemp)
nano $tmpfile
gpg2 --import $tmpfile
rm $tmpfile

echo "[+] GPG key imported."
echo "[+] Done."

#!/usr/bin/env bash
# vim: set ts=4 sw=4 tw=0 et :

# secure script execution
set -euo pipefail

import() {
    readonly tmpfile=$(mktemp)
    vi $tmpfile
    gpg2 --import $tmpfile
    rm $tmpfile
}

import
echo "[+] GPG key imported."
echo "[+] Done."

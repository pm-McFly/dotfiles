#!/usr/bin/env bash
# vim: set ts=4 sw=4 tw=0 et :

# secure script execution
set -euo pipefail

# Install starship shell
curl -sS https://starship.rs/install.sh | sh

# Import user config
readonly tmpdir=$(mktemp -d)

git clone https://github.com/pm-McFly/dotfiles.git $tmpdir
pushd $tmpdir
cp -rvf ./home/. $HOME
popd
rm -rf $tmpdir

echo "[+] All files copied"
echo "[+] Done."

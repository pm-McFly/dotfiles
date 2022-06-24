#!/usr/bin/env bash
# vim: set ts=4 sw=4 tw=0 et :

# secure script execution
set -euo pipefail

# Install third-party repositories
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted

# Update whole system
sudo dnf update --refresh -y

# Update components
sudo dnf groupupdate -y core sound-and-video

# Install updater for third-party softwares
sudo dnf copr enable -y kwizart/fedy
sudo dnf install -y fedy curl thefuck bash gnupg2 openssh git vim make python ctags

# Fix anydesk install issue
sudo dnf install -y --releasever=32 pangox-compat.x86_64

# Install third-party tools
readonly tools_list=(
    'anydesk'
    'dockerce'
    'google-chrome'
    'insync'
    'onlyoffice'
    'signal-desktop'
    'telegram'
    'yatta'
    'intel-media-driver'
    'intel-vaapi-driver'
    'disable-wayland'
    'codecs'
)
sudo fedy "${tools_list[@]/#/-a\ }"

echo "[+] The system has now all the required tools."
echo "[+] Done."

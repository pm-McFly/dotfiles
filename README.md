# Dotfiles

Collection of user's config files

## Requirements

- curl
- git
- bash

## Installation

```bash
# For fedora workstation run this first
curl -Ss https://raw.githubusercontent.com/pm-McFly/dotfiles/main/utilities/fedora_prepare.sh | sh

# Install files
curl -Ss https://raw.githubusercontent.com/pm-McFly/dotfiles/main/install.sh | sh

# GPG and SSH key import helpers
curl -SsO https://raw.githubusercontent.com/pm-McFly/dotfiles/main/utilities/gpg.sh
curl -SsO https://raw.githubusercontent.com/pm-McFly/dotfiles/main/utilities/ssh.sh
```
```bash
# Once installed update can be done as follow
dotfiles-update
```

## Tools

This collection provides config for the following tools:

- Starship
- Bash
- Git
- Vim
- thefuck

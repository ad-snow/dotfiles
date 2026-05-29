#!/usr/bin/env bash

set -euo pipefail

# Add microsoft apt key
sudo apt install -y --no-install-recommends  wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/microsoft.gpg

# Setup VSCode repo
sudo tee /etc/apt/sources.list.d/vscode.sources << 'EOF'
Types: deb
URIs: https://packages.microsoft.com/repos/code
Suites: stable
Components: main
Architectures: amd64,arm64,armhf
Signed-By: /usr/share/keyrings/microsoft.gpg
EOF

# Add fish repo
sudo add-apt-repository -y ppa:fish-shell/release-4

# Install packages
sudo apt update
sudo apt upgrade -y
sudo apt install -y --no-install-recommends \
    code \
    curl \
    fish \
    git \
    guake

# Install Zed editor
curl -f https://zed.dev/install.sh | sh

# Set up favourite apps
gsettings set org.gnome.shell favorite-apps "['firefox_firefox.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop']"

# Install Gruvbox theme for VSCode (the chosen theme in the settings"
code --install-extension jdinhlife.gruvbox

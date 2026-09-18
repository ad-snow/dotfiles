#!/usr/bin/env bash

set -euo pipefail

# File hashes to make sure this script runs when one of the font files changes
# file hash: {{ include (joinPath $.chezmoi.homeDir ".local/share/fonts/Monaspace/Monaspace_Argon_Var.ttf") | sha256sum }}
# file hash: {{ include (joinPath $.chezmoi.homeDir ".local/share/fonts/Monaspace/Monaspace_Krypton_Var.ttf") | sha256sum }}
# file hash: {{ include (joinPath $.chezmoi.homeDir ".local/share/fonts/Monaspace/Monaspace_Neon_Var.ttf") | sha256sum }}
# file hash: {{ include (joinPath $.chezmoi.homeDir ".local/share/fonts/Monaspace/Monaspace_Radon_Var.ttf") | sha256sum }}
# file hash: {{ include (joinPath $.chezmoi.homeDir ".local/share/fonts/Monaspace/Monaspace_Xenon_Var.ttf") | sha256sum }}

echo "Updating font cache..."

fc-cache -f

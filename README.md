# Dotfiles powered by chezmoi

## Installing on a new machine
Currently Ubuntu and Fedora are supported

1. Install and initialize chezmoi with
   ```bash
   sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply ad-snow
   ```
2. Log out and back in again to restart the gnome shell
3. Activate PaperWM with
   ```bash
   gnome-extensions enable paperwm@paperwm.github.com
   ```

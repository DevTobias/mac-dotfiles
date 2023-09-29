#!/usr/bin/env bash

# Set user settings
cp ./code/settings.json ~/Library/Application\ Support/Code/User/settings.json

# Install default extensions
code --install-extension aaron-bond.better-comments
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension streetsidesoftware.code-spell-checker-german
code --install-extension EditorConfig.EditorConfig
code --install-extension IronGeek.vscode-env
code --install-extension dbaeumer.vscode-eslint
code --install-extension pomber.git-file-history
code --install-extension esbenp.prettier-vscode
code --install-extension rvest.vs-code-prettier-eslint
code --install-extension teabyii.ayu
code --install-extension Catppuccin.catppuccin-vsc-icons
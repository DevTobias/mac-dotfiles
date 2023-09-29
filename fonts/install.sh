#!/usr/bin/env bash

# Install terminal nerd fonts
rm -f -r fonts/nerd-fonts
git clone --filter=blob:none --sparse https://github.com/ryanoasis/nerd-fonts.git fonts/nerd-fonts
cd fonts/nerd-fonts
git sparse-checkout add patched-fonts/DejaVuSansMono
./install.sh DejaVuSansMono
cd ../..
rm -f -r fonts/nerd-fonts

# Install dank mono font

sudo cp fonts/dank_mono/DankMono-Bold.otf ~/Library/Fonts/
sudo cp fonts/dank_mono/DankMono-Italic.otf ~/Library/Fonts/
sudo cp fonts/dank_mono/DankMono-Regular.otf ~/Library/Fonts/
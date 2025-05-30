#!/bin/bash

# Set script to exit on: error or pipefail
# Also set script to print out commands before execution
set -exo pipefail

# Clone the dotfiles repo
echo "Cloning repo: https://github.com/DoubleDotStudios/SwayFX-Dotfiles"
git clone --depth=1 https://github.com/DoubleDotStudios/SwayFX-Dotfiles
echo "Done!\n"

# Create a backup of config files
echo "Backing up config files..."
mkdir ~/.backup
mv ~/.config ~/.backup/
mv ~/.zshrc ~/.backup/
echo "Done!\n"

# Move configs into ~/.config
echo "Moving config files to ~/.config..."
mkdir -p ~/.config
mv ./config/* ~/.config/
echo "Done!\n"

# Move scripts into ~/.local/bin
echo "Moving scripts to ~/.local/bin..."
mkdir -p ~/.local/bin
mv ./bin/* ~/.local/bin/
echo "Done!\n"

# Move rofi scripts to ~/.local/share/rofi
echo "Moving rofi files to ~/.local/share/rofi..."
mkdir -p ~/.local/share/rofi
mv ./rofi/* ~/.local/share/rofi/
echo "Done!\n"

# Move .zshrc scripts to ~
echo "Moving .zshrc to ~..."
mv ./zshrc ~
echo "Done!\n"

# Install SolarVim
echo "Installing SolarVim..."
git clone https://github.com/DoubleDotStudios/SolarVim.git
rm -r ./SolarVim/README.md ./SolarVim/assets ./SolarVim/.gitignore ./SolarVim/.git
mv ./SolarVim/* ~/.config/nvim/
echo "Done!\n"

echo "\nSwayFX dotfiles installed successfully!"

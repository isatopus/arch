#!/bin/bash

# Define the directories to be deployed
CONFIG_DIRS=("hypr" "waybar" "kitty" "wofi" "dunst" "assets")
SOURCE_DIR=$(dirname "$(readlink -f "$0")")
BACKUP_DIR="$HOME/.config/hypr_mixed_backup_$(date +%Y%m%d_%H%M%S)"

echo "--- Starting Mixed Hyprland Deployment ---"

# Create backup directory
mkdir -p "$BACKUP_DIR"
echo "Created backup directory: $BACKUP_DIR"

# Clean and Backup
for dir in "${CONFIG_DIRS[@]}"; do
    if [ -d "$HOME/.config/$dir" ]; then
        echo "Backing up existing ~/.config/$dir..."
        cp -r "$HOME/.config/$dir" "$BACKUP_DIR/"
        echo "Cleaning ~/.config/$dir..."
        rm -rf "$HOME/.config/$dir"
    fi
done

# Deploy
echo "Deploying new configurations..."
for dir in "${CONFIG_DIRS[@]}"; do
    if [ -d "$SOURCE_DIR/$dir" ]; then
        echo "Copying $dir to ~/.config/..."
        cp -r "$SOURCE_DIR/$dir" "$HOME/.config/"
    fi
done

tar -xvf assets/themes/Catppuccin-Mocha.tar.xz -C /usr/share/themes/
tar -xvf assets/icons/Tela-circle-dracula.tar.xz -C /usr/share/icons/


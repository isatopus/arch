#!/bin/bash

# Fetch names and IDs
list=$(flatpak list --app --columns=name,application | sed 's/\t/|/')

# Create a display list for Wofi (Names only)
choice=$(echo "$list" | cut -d'|' -f1 | wofi --show dmenu --prompt "Launch Flatpak...")

# Execute if a choice was made
if [ -n "$choice" ]; then
    # Match the name back to the ID
    appid=$(echo "$list" | grep "^$choice|" | cut -d'|' -f2)
    flatpak run "$appid" &
fi
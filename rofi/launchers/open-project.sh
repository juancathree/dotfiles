#!/bin/bash

# Navigate to your desired directory, or set it to home
DIRECTORY="$HOME/Projects/"

# Use Rofi to select a folder
FOLDER=$(find "$DIRECTORY" -type d | rofi -dmenu -p "Select a folder:" -show-icons)

# Open the selected folder in VS Code
if [ -n "$FOLDER" ]; then
    code "$FOLDER"
fi

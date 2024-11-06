#!/bin/bash

# Load color definitions from the colors-waybar.css file
FOREGROUND=$(grep '@define-color foreground' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
BACKGROUND=$(grep '@define-color background' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
CURSOR=$(grep '@define-color cursor' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')

COLOR0=$(grep '@define-color color0' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR1=$(grep '@define-color color1' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR2=$(grep '@define-color color2' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR3=$(grep '@define-color color3' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR4=$(grep '@define-color color4' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR5=$(grep '@define-color color5' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR6=$(grep '@define-color color6' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR7=$(grep '@define-color color7' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')

# Backup the existing config file
cp ~/.config/waybar/config ~/.config/waybar/config.bak

# Use sed to replace only the color values in the config.json
sed -i -E \
    -e "s/#([A-Fa-f0-9]{6})/<span color='$COLOR1'>\1<\/span>/" \
    -e "s/<span color='$COLOR

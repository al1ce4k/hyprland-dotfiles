#!/bin/bash

# Load color definitions from colors-waybar.css file
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
COLOR8=$(grep '@define-color color8' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR9=$(grep '@define-color color9' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR10=$(grep '@define-color color10' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR11=$(grep '@define-color color11' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR12=$(grep '@define-color color12' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR13=$(grep '@define-color color13' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR14=$(grep '@define-color color14' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')
COLOR15=$(grep '@define-color color15' /home/alice/.cache/wal/colors-waybar.css | awk '{print $3}')

# Backup the existing config file
cp ~/.config/waybar/config ~/.config/waybar/config.bak

# Update colors in the config.json file
sed -i -E \
    -e "s/#foreground-color/$FOREGROUND/g" \
    -e "s/#background-color/$BACKGROUND/g" \
    -e "s/#cursor-color/$CURSOR/g" \
    -e "s/#color0/$COLOR0/g" \
    -e "s/#color1/$COLOR1/g" \
    -e "s/#color2/$COLOR2/g" \
    -e "s/#color3/$COLOR3/g" \
    -e "s/#color4/$COLOR4/g" \
    -e "s/#color5/$COLOR5/g" \
    -e "s/#color6/$COLOR6/g" \
    -e "s/#color7/$COLOR7/g" \
    -e "s/#color8/$COLOR8/g" \
    -e "s/#color9/$COLOR9/g" \
    -e "s/#color10/$COLOR10/g" \
    -e "s/#color11/$COLOR11/g" \
    -e "s/#color12/$COLOR12/g" \
    -e "s/#color13/$COLOR13/g" \
    -e "s/#color14/$COLOR14/g" \
    -e "s/#color15/$COLOR15/g" \
    ~/.config/waybar/config

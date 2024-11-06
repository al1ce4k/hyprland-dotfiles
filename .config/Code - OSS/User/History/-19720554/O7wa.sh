#!/bin/bash

# Load color definitions from colors-waybar.css
FOREGROUND=$(grep '@define-color foreground' ~/.config/waybar/colors-waybar.css | awk '{print $3}')
BACKGROUND=$(grep '@define-color background' ~/.config/waybar/colors-waybar.css | awk '{print $3}')
CURSOR=$(grep '@define-color cursor' ~/.config/waybar/colors-waybar.css | awk '{print $3}')

COLOR0=$(grep '@define-color color0' ~/.config/waybar/colors-waybar.css | awk '{print $3}')
COLOR1=$(grep '@define-color color1' ~/.config/waybar/colors-waybar.css | awk '{print $3}')
COLOR2=$(grep '@define-color color2' ~/.config/waybar/colors-waybar.css | awk '{print $3}')
COLOR3=$(grep '@define-color color3' ~/.config/waybar/colors-waybar.css | awk '{print $3}')
COLOR4=$(grep '@define-color color4' ~/.config/waybar/colors-waybar.css | awk '{print $3}')
COLOR5=$(grep '@define-color color5' ~/.config/waybar/colors-waybar.css | awk '{print $3}')
COLOR6=$(grep '@define-color color6' ~/.config/waybar/colors-waybar.css | awk '{print $3}')
COLOR7=$(grep '@define-color color7' ~/.config/waybar/colors-waybar.css | awk '{print $3}')

# Replace placeholders in the JSON config
envsubst < ~/.config/waybar/config-template.json > ~/.config/waybar/config

#!/bin/bash

# Define the path to the colors file and the Waybar config file
COLORS_FILE="/home/alice/.cache/wal/colors-waybar.css"
WAYBAR_CONFIG="/home/alice/.config/waybar/config"

# Create a temporary config file to hold the updated configuration
TEMP_CONFIG="/home/alice/.config/waybar/config_temp"

# Copy the original config to the temp config
cp "$WAYBAR_CONFIG" "$TEMP_CONFIG"

# Loop through each line in the colors file and replace placeholders
while IFS= read -r line; do
    # Only process lines that start with "@define-color"
    if [[ $line == @define-color* ]]; then
        # Extract the color name and the hex color code
        COLOR_NAME=$(echo "$line" | awk '{print $2}')
        COLOR_CODE=$(echo "$line" | awk '{print $3}')
        
        # Escape special characters in COLOR_CODE for use in sed
        ESCAPED_COLOR_CODE=$(printf '%s\n' "$COLOR_CODE" | sed 's/[\/&]/\\&/g')
        
        # Replace the placeholder (e.g., #color0) with the actual color code
        sed -i "s/#$COLOR_NAME/$ESCAPED_COLOR_CODE/g" "$TEMP_CONFIG"
    fi
done < "$COLORS_FILE"

# Replace the original config file with the updated config
mv "$TEMP_CONFIG" "$WAYBAR_CONFIG"

# Print a success message
echo "Color placeholders in $WAYBAR_CONFIG have been updated successfully!"

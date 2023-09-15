#!/bin/bash

# Enter root shell
sudo -s <<EOF

# Define the lines to add
lines_to_add="hdmi_force_hotplug=1
hdmi_group=2
hdmi_mode=9"

# Define the config file path
config_file="/boot/config.txt"

# Check if the config file exists
if [ -f "$config_file" ]; then
    # Append the lines to the end of the file
    echo "$lines_to_add" >> "$config_file"
    echo "Lines added to $config_file"
else
    echo "Config file $config_file not found."
fi

# Exit root shell
EOF

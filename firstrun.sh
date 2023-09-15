#!/bin/bash

sudo apt-get update -y && 
sudo apt-get upgrade -y && 
sudo apt install lightdm openbox -y && 
sudo raspi-config nonint do_boot_behaviour B4 && 
sudo apt install chromium -y && 
sudo apt show mono-complete -y && 
sudo raspi-config nonint do_boot_wait 0 && 
sudo raspi-config nonint do_vnc 0 && 
sudo raspi-config nonint do_vnc 1 && 
sudo raspi-config nonint do_vnc 0 && 



# Define the lines to add
lines_to_add="hdmi_force_hotplug=1
hdmi_group=2
hdmi_mode=9"

# Define the config file path
config_file="/boot/config.txt"

# Check if the config file exists
if [ -f "$config_file" ]; then
    # Use sudo and tee to insert the lines below #hdmi_safe=1
    sudo bash -c "sed '/#hdmi_safe=1/a $lines_to_add' $config_file > temp_config.txt && mv temp_config.txt $config_file"
    echo "Lines added to $config_file"
    sudo reboot
else
    echo "Config file $config_file not found."
fi

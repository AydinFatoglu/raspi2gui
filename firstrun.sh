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
sudo raspi-config nonint do_vnc 0

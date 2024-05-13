#!/bin/bash

sudo apt-get update -y && 
sudo apt-get upgrade -y && 
sudo apt-get install lightdm openbox -y && 
sudo raspi-config nonint do_boot_behaviour B4 && 
sudo apt install chromium-browser -y && 
sudo apt-get install mono-complete -y && 
sudo raspi-config nonint do_boot_wait 0 && 
sudo apt-get install realvnc-vnc-server -y && 
sudo raspi-config nonint do_vnc 0 &&
curl -O https://raw.githubusercontent.com/AydinFatoglu/raspi2gui/main/cfg_vnc.sh && 
sudo chmod +x cfg_vnc.sh && 
sh cfg_vnc.sh && 
sudo apt-get install terminator -y && 
sudo apt-get install thonny -y && 
pip install selenium && 
sudo apt-get install chromium-chromedriver && 
curl -O https://raw.githubusercontent.com/AydinFatoglu/raspi2gui/main/speedtestinstall.sh && 
sudo chmod +x speedtestinstall.sh && 
sh speedtestinstall.sh && 
sudo systemctl disable hciuart.service && 
sudo systemctl disable bluetooth.service && 
sudo reboot




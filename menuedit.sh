#!/bin/bash

# Define the file paths and URL
local_path="/etc/xdg/openbox/menu.xml"
remote_url="https://raw.githubusercontent.com/AydinFatoglu/raspi2gui/main/menu.xml"

# Check if the file exists before deleting it
if [ -f "$local_path" ]; then
    echo "Deleting existing file: $local_path"
    sudo rm "$local_path"
else
    echo "File does not exist: $local_path"
fi

# Download the file from the remote URL and save it to the local path
echo "Downloading file from $remote_url"
sudo curl -o "$local_path" "$remote_url"

# Check if the download was successful
if [ $? -eq 0 ]; then
    echo "Download completed successfully."
else
    echo "Download failed."
fi

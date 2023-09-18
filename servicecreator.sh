#!/bin/bash

# Define the service unit file name and location
SERVICE_NAME="speedresult"
SERVICE_FILE="/lib/systemd/system/$SERVICE_NAME.service"

# Check if the service file already exists
if [ -e "$SERVICE_FILE" ]; then
    echo "Service file '$SERVICE_FILE' already exists."
else
    # Create the service unit file
    echo "Creating service file '$SERVICE_FILE'..."

    cat <<EOF | sudo tee "$SERVICE_FILE" > /dev/null
[Unit]
Description=Sepeed Result Service
After=network.target

[Service]
ExecStart=/bin/sh -c "command1 && sleep 5 && command2"

[Install]
WantedBy=multi-user.target
EOF

    # Reload systemd to pick up the new service file
    sudo systemctl daemon-reload

    echo "Service file created and systemd reloaded."
fi

# Enable and start the service
echo "Enabling and starting the service..."
sudo systemctl enable "$SERVICE_NAME.service"
sudo systemctl start "$SERVICE_NAME.service"

# Check the service status
echo "Service status:"
sudo systemctl status "$SERVICE_NAME.service"

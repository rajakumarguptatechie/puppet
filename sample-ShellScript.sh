#!/bin/bash
# Create a custom systemd service

# Create test service file
echo << EOF >> /var/tmp/test_service.sh
info=/tmp/myservice-systemd-cat-pipe-info
mkfifo "$info"
trap "exec 3>&-; rm $info" EXIT
systemd-cat -p info < "$info" &
exec 3>"$info"
DATE=`date '+%Y-%m-%d %H:%M:%S'`
echo "Example service started at ${DATE}" | systemd-cat -p info
while :
do
  echo "Looping...";
  sleep 30;
done
EOF

# Copy the script to /usr/bin and make it executable
sudo cp /var/tmp/test_service.sh /usr/bin/test_service.sh
sudo chmod +x /usr/bin/test_service.sh

# Create a Unit file to define a systemd service
echo << EOF >> /lib/systemd/system/myservice.service
[Unit]
Description=Example systemd service.

[Service]
Type=simple
ExecStart=/bin/bash /usr/bin/test_service.sh

[Install]
WantedBy=multi-user.target

# Copy the unit file to /etc/systemd/system and give it permissions
sudo cp myservice.service /etc/systemd/system/myservice.service
sudo chmod 644 /etc/systemd/system/myservice.service

# Start and Enable the service
sudo systemctl start myservice
sudo systemctl enable myservice

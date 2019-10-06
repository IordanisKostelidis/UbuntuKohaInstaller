#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Install MariadB
apt install mariadb-server -y

# Grant all permissions to debian sys maint
echo "GRANT ALL PRIVILEGES ON *.* TO 'debian-sys-maint'@'localhost'" | sudo mysql

exit

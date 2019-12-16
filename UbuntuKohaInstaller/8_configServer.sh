#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Update hosts file
mv /etc/hosts /etc/hosts_backup
cp ./config/hosts/hosts /etc/hosts
chmod --reference=/etc/hosts_backup /etc/hosts
dos2unix /etc/hosts

exit

#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Install Koha
apt-get install -y koha-common

# Clean packages
apt-get clean
apt-get autoclean

exit

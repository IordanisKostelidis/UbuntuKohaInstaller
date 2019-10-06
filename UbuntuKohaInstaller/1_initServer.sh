#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Update package catalog
apt update

# Install basic utils
apt install -y apt-utils

exit

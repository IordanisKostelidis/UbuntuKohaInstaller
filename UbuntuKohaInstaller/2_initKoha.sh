#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Add Koha key and package repository
wget -O- http://debian.koha-community.org/koha/gpg.asc | apt-key add -
echo deb http://debian.koha-community.org/koha 19.05 main | tee /etc/apt/sources.list.d/koha.list

# Update package catalog
apt update

exit

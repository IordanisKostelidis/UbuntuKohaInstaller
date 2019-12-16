#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

service apache2 restart
apt clean
apt autoclean

exit

#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Add MariaDB key and package reporitory
apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
add-apt-repository "deb [arch=amd64,arm64,ppc64el] http://ftp.cc.uoc.gr/mirrors/mariadb/repo/10.4/ubuntu $(lsb_release -cs) main"

exit

#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Update koha sites config file
mv /etc/koha/koha-sites.conf /etc/koha/koha-sites.conf_backup
cp ./config/koha/koha-sites.conf /etc/koha/koha-sites.conf
chmod --reference=/etc/koha/koha-sites.conf_backup /etc/koha/koha-sites.conf
dos2unix /etc/koha/koha-sites.conf

# Enable Apache Modules
a2enmod rewrite
a2enmod cgi

# Restart Apache
service apache2 restart

# Create database for koha
koha-create --create-db library

# Enable Apache Modules
a2enmod deflate
a2ensite library

# Restart Apache
service apache2 restart

# Update hosts file
mv /etc/hosts /etc/hosts_backup
cp ./config/hosts/hosts /etc/hosts
chmod --reference=/etc/hosts_backup /etc/hosts
dos2unix /etc/hosts

# Restart Apache
service apache2 restart

exit

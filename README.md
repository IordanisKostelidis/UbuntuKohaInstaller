# Ubuntu Koha Installer
Install Koha on Ubuntu Server easy with those scripts

# Requirements
* Ubuntu LTS Server
    * Tested on [Ubuntu Server 18.04 LTS](https://ubuntu.com)
* zip and unzip application
    * apt-get install zip unzip
* dos2unix application
    * apt-get install dos2unix

# Notes
* Currently supports only one site by default
    * You can add more sites manually, using Koha binaries
* Currently supports only site with name "library"
    * You can change it, if you edit
        * ./config/hosts/hosts
        * ./configKoha.sh

# Installation guide
* wget (*TODO: Add Release URL*)
* unzip ubuntu-koha-installer-19.1006.zip
* cd UbuntuKohaInstaller
* dos2unix *.sh
* nano ./config/koha/koha-sites.conf
    * Set your domain name and intra suffix
        * e.g.: From ".koha.gr" to ".mydomain.com"
        * e.g.: From "-intra" to "-admin"
* nano ./config/hosts/hosts
    * Set your domain and sub-domain names
        * e.g.: From "koha.gr" to "mydomain.com"
        * e.g.: From "library.koha.gr" to "library.mydomain.com"
        * e.g.: From "library-intra.koha.gr" to "library-admin.mydomain.com"
* sudo su
* ./1_initServer.sh
* ./2_initKoha.sh
* ./3_initMariaDB.sh
* ./4_installKoha.sh
* ./5_installMariaDB.sh
* ./6_configKoha.sh
* ./7_configMariaDB.sh
* ./8_configServer.sh
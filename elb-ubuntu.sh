# Setup a scalable app server instance behind ELB
# Leave hostname alone

sudo apt-get update
sudo apt-get install -y python-software-properties
sudo apt-get install -y software-properties-common

sudo add-apt-repository -y ppa:ondrej/php
sudo add-apt-repository -y ppa:ondrej/apache2
sudo add-apt-repository -y ppa:ondrej/mysql-5.6
sudo add-apt-repository -y ppa:certbot/certbot
sudo apt-get update

sudo apt-get install -y apache2

# apt-cache search php7

sudo apt-get install -y php7.1
sudo apt-get install -y libapache2-mod-php7.1 php7.1-mysql php7.1-curl php7.1-json
sudo apt-get install -y php7.1-mbstring php7.1-zip php7.1-xml php7.1-gd
sudo apt-get install -y php7.1-apc
sudo apt-get install -y php7.1-intl

sudo apt-get install -y mysql-client
sudo apt-get install -y nfs-common  # For EFS

sudo a2enmod expires
sudo a2enmod headers
sudo a2enmod rewrite
sudo phpenmod mysqlnd pdo_mysql intl

# sudo vi /etc/apache2/apache2.conf
# Change: AllowOverride None
# To: AllowOverride All

# The OS must know about locales - wow
# Check using:   locale -a
# https://stackoverflow.com/questions/23170819/how-to-debug-gettext-not-working-in-php
sudo locale-gen es de

sudo systemctl restart apache2

# apache2ctl configtest
# apache2ctl -S
# apachectl -M

# for outbound mail
# sudo apt install -y mailutils
#   Internet Site
#   tsugicloud.org
# if you need to reconfigure postfix: sudo dpkg-reconfigure postfix

# Git stuff...
# git config --global user.name "Charles R. Severance"
# git config --global user.email "csev@umich.edu"
# git config --global core.editor "vim"

# systemctl poweroff


# Set up an Apache / Mysql for static.lrnxp.net
# Also used to set up apache for apps.lrnxp.com

# Set DNS in Route 53
# sudo vi /etc/hostname apps.xyz.com
# sudo hostname apps.xyz.com
# sudo reboot

sudo apt-get install -y python-software-properties
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo add-apt-repository -y ppa:ondrej/apache2
sudo add-apt-repository -y ppa:ondrej/mysql-5.6
sudo add-apt-repository -y ppa:certbot/certbot
sudo apt-get update

apt-cache search php7
sudo apt-get install -y php7.2
sudo apt-get install -y apache2
sudo apt-get install -y mysql-server
sudo apt-get install -y libapache2-mod-php7.2 php7.2-mysql php7.2-curl php7.2-json
sudo apt-get install -y php7.2-apc
sudo apt-get install -y python-certbot-apache 

sudo a2enmod expires
sudo a2enmod headers
sudo systemctl restart apache2

# apache2ctl configtest
# apache2ctl -S

# For SSL
# sudo certbot --apache
#   Need to enter email
#   Need to enter domain name
# https://www.ssllabs.com/ssltest/analyze.html?d=xyz.org

# for outbound mail
# sudo apt install -y mailutils
#   Internet Site
# if you need to reconfigure postfix: sudo dpkg-reconfigure postfix

# git config --global user.name "Charles R. Severance"
# git config --global user.email "csev@umich.edu"
# git config --global core.editor "vim"

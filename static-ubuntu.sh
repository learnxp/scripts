# Set up an Apache / Mysql for static.lrnxp.net
# Also used to set up apache for apps.lrnxp.com

sudo apt-get install -y python-software-properties
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo add-apt-repository -y ppa:ondrej/apache2
sudo add-apt-repository -y ppa:ondrej/mysql-5.6
sudo add-apt-repository ppa:certbot/certbot
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

# sudo certbot --apache
# apps.lrnxp.com
# sudo vi /etc/hostname apps.xyz.com
# sudo hostname apps.xyz.com

# for outbound mail
# sudo apt install -y mailutils
# if you need to reconfigure postfix: sudo dpkg-reconfigure postfix

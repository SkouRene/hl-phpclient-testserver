 #!/bin/bash

echo "provisioning virtual machine..."

echo "Installing Git"
    sudo apt-get install git -ym > /dev/null

echo "Installing Nginx"
    sudo apt-get install nginx -y > /dev/null

echo "Updating PHP repository"
    sudo apt-get install software-properties-common python-software-properties build-essential -ym > /dev/null
    sudo add-apt-repository ppa:ondrej/php5 -ym > /dev/null
    sudo apt-get update -m > /dev/null

echo "Installing PHP"
    sudo apt-get install php5-common php5-dev php5-cli php5-fpm -ym > /dev/null

echo "Installing PHP extension"
    sudo apt-get install curl php5-curl php5-gd php5-mcrypt > /dev/null

echo "Configuring Nginx"
    cp /vagrant/provision/config/nginx_vhost /etc/nginx/sites-available/nginx_vhost > /dev/null

    ln -s /etc/nginx/sites-available/nginx_vhost /etc/nginx/sites-enabled/

    rm -rf /etc/nginx/sites-available/default

    sudo service nginx restart > /dev/null

echo "Installing curl"
    sudo apt-get install curl -y > /dev/null

echo "Installing composer"
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/var/www

echo "Configure composer"
    cd /var/www
    php composer.phar install


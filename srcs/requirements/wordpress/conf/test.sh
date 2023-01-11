# wget https://wordpress.org/latest.tar.gz
# tar -zxvf latest.tar.gz
# rm ./wordpress/wp-config-sample.php
# mv ./wordpress/ /var/www/html
# cp /root/wp-config.php /var/www/html/wordpress






# # sleep 10
# cd /var/www/html
# # wget https://wordpress.org/latest.zip
# # unzip latest.zip
# wget https://wordpress.org/latest.tar.gz
# tar -zxvf latest.tar.gz
# # rm -rf ./*
# # mv wordpress/* ./
# # rm -f latest.tar.gz
# # # cd localhost
# # cp wp-config-sample.php wp-config.php
# # # nano wp-config.php
# # # chown -R www-data:www-data /var/www/html/localhost


# apt-get install php5-fpm php5-mysql
# sleep 10
# apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli \
# 			php7.3-common php7.3-json php7.3-opcache php7.3-readline \
# 			php-json php-mbstring


# php-fpm:
# apt-get install php5-fpm






# cd /var/www/html
# wget https://wordpress.org/latest.tar.gz
# tar -zxvf latest.tar.gz
# rm -rf latest.tar.gz
# # rm *.html
# # mv wordpress/* ./
# chown -R www-data:www-data /var/www/html/wordpress
# # rm index.nginx-debian.html
# rm /var/www/html/wordpress/readme.html
# cp /root/wp-config.php ./wordpress
# service php7.3-fpm restart
# # service nginx reload




# # chmod 755 /var/www/*
# # chown -R www-data:www-data /var/www/html/*


# # apt install php libapache2-mod-php php-mysql
# # php -v

















# apt-get install -y php7.3-common php7.3-zip php7.3-curl php7.3-xml php7.3-xmlrpc php7.3-json php7.3-mysql php7.3-pdo php7.3-gd php7.3-imagick php7.3-ldap php7.3-imap php7.3-mbstring php7.3-intl php7.3-cli php7.3-tidy php7.3-bcmath php7.3-opcache




# service php5-fpm start
# php-fpm7.3 -t
# service php7.3-fpm reload















# phpMyAdmin
# wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
# tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
# mv phpMyAdmin-4.9.0.1-all-languages /var/www/html/phpMyAdmin
# rm /var/www/html/phpMyAdmin/config.sample.inc.php
# cp /root/config.inc.php /var/www/html/phpMyAdmin/







wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -
echo "deb https://packages.sury.org/php/ buster main" | tee /etc/apt/sources.list.d/php.list
apt-get update
apt-get install -y php php-fpm php-mysql



# adduser \
#    --system \
#    --shell /bin/bash \
#    --gecos "nginx" \
#    --group \
#    --disabled-password \
#    nginx

# chown -R nginx:nginx /var/www/




mkdir -p /run/php && \
mkdir -p /var/log/php-fpm /var/www/html



sleep 50
cp /root/www.conf /etc/php/7.3/fpm/pool.d/www.conf
# cp /root/www.conf /etc/php/7.3/fpm/php.ini

# apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli \
# 			php7.3-common php7.3-json php7.3-opcache php7.3-readline \
# 			php-json php-mbstring

# cd /var/www/html
rm -rf ./*
# wget https://wordpress.org/latest.tar.gz
# tar -zxvf latest.tar.gz

wp core download --allow-root --path='/var/www/html'
cp /root/wp-config.php ./
rm -rf ./wp-config-sample.php
wp core install --allow-root --url=ejahan.42.fr --title=inception --admin_user=$WP_USER --admin_password=$WP_PASSWORD --admin_email=ejahan@student.42.fr

wp --allow-root user create ejahan ejahan_test@student.42.fr --role=author --user_pass=ejahan_pw

rm -rf latest.tar.gz
chown -R www-data:www-data /var/www/html #/wordpress
# chown -R nginx:nginx /var/www/


# rm /var/www/html/wordpress/readme.html
# mv ./wordpress/* ./

# service php7.3-fpm start
php-fpm7.3 -F -R
# tail -f





# wordpress    | cp: cannot create regular file '/etc/php/7.3/fpm/php.ini': No such file or directory
# wordpress    | /root/test.sh: line 98: php-fpm7.3: command not found
# wordpress    | php7.3-fpm: unrecognized service
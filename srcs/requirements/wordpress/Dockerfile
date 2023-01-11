FROM debian:buster

RUN apt-get update
# RUN apt-get install php8.1-fpm -y
RUN apt-get install -y wget
# RUN apt-get install php php-cli php-mysql php-gd php-xml php-fpm -y
# RUN apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli \
# 			php7.3-common php7.3-json php7.3-opcache php7.3-readline \
# 			php-json php-mbstring

RUN apt-get install -y mariadb-client

RUN apt-get update


RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp



# RUN apt-get install -y php7.3-common php7.3-zip php7.3-curl php7.3-xml php7.3-xmlrpc php7.3-json php7.3-mysql php7.3-pdo php7.3-gd php7.3-imagick php7.3-ldap php7.3-imap php7.3-mbstring php7.3-intl php7.3-cli php7.3-tidy php7.3-bcmath php7.3-opcache

# RUN apt install -y php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
COPY ./conf/ /root/

WORKDIR /var/www/html

# RUN chown -R root:root /var/www/html

RUN chmod 777 /root/www.conf
RUN chmod 777 /root/wp-config.php

# RUN wget https://wordpress.org/latest.tar.gz
# RUN tar -zxvf latest.tar.gz
# RUN rm -rf latest.tar.gz
# RUN chown -R www-data:www-data /var/www/html/wordpress
# RUN rm /var/www/html/wordpress/readme.html
# RUN cp /root/wp-config.php ./wordpress
# RUN service php7.3-fpm restart

# RUN chmod 777 test.sh
# RUN ./test.sh
EXPOSE 9000
ENTRYPOINT ["bash", "/root/test.sh"]

# EXPOSE 3306



    wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -
    echo "deb https://packages.sury.org/php/ buster main" | tee /etc/apt/sources.list.d/php.list
    apt-get update
    apt-get install -y php php-fpm php-mysql

    mkdir -p /run/php && \
    mkdir -p /var/log/php-fpm /var/www/html

    sleep 15
    cp /root/www.conf /etc/php/7.3/fpm/pool.d/www.conf
    rm -rf ./*

    wp core download --allow-root --path='/var/www/html'
    cp /root/wp-config.php ./
    rm -rf ./wp-config-sample.php

wp --path=${WP_PATH} --allow-root core is-installed
if [ $? -ne 0 ]
then
    wp core install --allow-root --url=ejahan.42.fr --title=inception --admin_user=$WP_USER --admin_password=$WP_PASSWORD --admin_email=ejahan@student.42.fr

    wp --allow-root user create ejahan ejahan_test@student.42.fr --role=author --user_pass=ejahan_pw

    rm -rf latest.tar.gz

fi

chown -R www-data:www-data /var/www/html
php-fpm7.3 -F -R

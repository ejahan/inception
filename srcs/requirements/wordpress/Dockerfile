FROM debian:buster

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y mariadb-client
RUN apt-get update
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/ /root/

WORKDIR /var/www/html

RUN chmod 777 /root/www.conf
RUN chmod 777 /root/wp-config.php
 
EXPOSE 9000

ENTRYPOINT ["bash", "/root/test.sh"]

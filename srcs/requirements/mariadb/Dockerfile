FROM debian:buster

COPY ./conf/ /root/
WORKDIR /root/


RUN apt-get -y update
RUN apt-get -y install curl software-properties-common gnupg2
RUN apt-get -y upgrade
RUN apt-get update && apt-get -y full-upgrade
# RUN curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
# RUN bash mariadb_repo_setup --mariadb-server-version=10.9

# RUN apt-get update
# RUN apt-get -y install mariadb-server mariadb-client

# # RUN cp /root/my.cnf /etc/mysql/my.cnf
# # RUN service mariadb start

# RUN apt-get -y install expect


EXPOSE 3306


ENTRYPOINT ["bash", "test.sh"]



# RUN mysql_secure_installation

# EXPOSE 3306

# RUN yum -y install mariadb-server
# RUN yum -y install initscripts
# WORKDIR /usr
# #RUN echo "bind-address=0.0.0.0" >> /etc/my.cnf
# RUN /usr/bin/mysql_install_db --datadir="/var/lib/mysql" --user=mysql
# RUN /usr/bin/mysqld_safe --datadir="/var/lib/mysql" --socket="/var/lib/mysql/mysql.sock" --user=mysql  >/dev/null 2>&1 &
# RUN /usr/bin/mysqladmin -u root password SOMEPASSWORD
# CMD tail -f /var/log/mariadb/mariadb.log
# EXPOSE 3306

# ARG DATABASE_ROOT_PASS








# RUN service mysql start \
#     && mysqladmin -u root password "root_pw" \
#     && mysql -u root -p"root_pw" -e "UPDATE mysql.user SET Password=PASSWORD('root_pw') WHERE User='root'" \
#     && mysql -u root -p"root_pw" -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1')" \
#     && mysql -u root -p"root_pw" -e "DELETE FROM mysql.user WHERE User=''" \
#     && mysql -u root -p"root_pw" -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%'" \
#     && mysql -u root -p"root_pw" -e "FLUSH PRIVILEGES"


# mysql -u root <<-EOF
# UPDATE mysql.user SET Password=PASSWORD('$rootpass') WHERE User='root';
# DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
# DELETE FROM mysql.user WHERE User='';
# DELETE FROM mysql.db WHERE Db='test' OR Db='test_%';
# FLUSH PRIVILEGES;










































# FROM debian:buster-slim

# EXPOSE 3306

# RUN apt-get update -y \
# 	&& apt-get upgrade -y \
#     && apt-get install -y apt-utils \
#     && apt-get install -y mariadb-client \
#     && apt-get install -y mariadb-server \
#     procps

# # RUN service mysql start

# # RUN rm -rf /var/run/mysql
# RUN mkdir -p /var/run/mysql
# RUN chmod 755 -R /var/run/mysql

# # RUN rm etc/mysql/mariadb.conf.d/my.cnf
# COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
# # COPY ./conf/50-server.cnf /var/run/mysql/

# # COPY ./conf/test.sql /tmp/
# COPY ./conf/start_mysql.sh /tmp/
# RUN chmod 777 /tmp/start_mysql.sh

# RUN service mysql start

# CMD ["bash", "/tmp/start_mysql.sh"]
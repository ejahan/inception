curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
bash mariadb_repo_setup --mariadb-server-version=10.9

apt-get update
apt-get -y install mariadb-server mariadb-client

cp /root/my.cnf /etc/mysql/my.cnf
service mariadb start

apt-get -y install expect

SECURE_MYSQL=$(expect -c "
set timeout 10
spawn mysql_secure_installation
expect \"Enter current password for root (enter for none):\"
send \"\r\"
expect \"Switch to unix_socket authentication\"
send \"n\r\"
expect \"Change the root password?\"
send \"y\r\"
expect \"New password: \"
send \"$MYSQL_ROOT_PASSWORD\r\"
expect \"Re-enter new password: \"
send \"$MYSQL_ROOT_PASSWORD\r\"
expect \"Remove anonymous users?\"
send \"y\r\"
expect \"Disallow root login remotely?\"
send \"y\r\"
expect \"Remove test database and access to it?\"
send \"y\r\"
expect \"Reload privilege tables now?\"
send \"y\r\"
expect eof
")

echo "$SECURE_MYSQL"

echo "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`;" | mysql -u root -p$MYSQL_ROOT_PASSWORD
echo "CREATE USER IF NOT EXISTS \`${MYSQL_ROOT}\`@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';" | mysql -u root -p$MYSQL_ROOT_PASSWORD
echo "GRANT ALL PRIVILEGES ON *.* TO \`${MYSQL_ROOT}\`@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}' WITH GRANT OPTION;" | mysql -u root -p$MYSQL_ROOT_PASSWORD
echo "FLUSH PRIVILEGES;" | mysql -u root -p$MYSQL_ROOT_PASSWORD
echo "CREATE USER IF NOT EXISTS \`${WP_USER}\`@'%' IDENTIFIED BY '${WP_PASSWORD}';" | mysql -u root -p$MYSQL_ROOT_PASSWORD
echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO \`${WP_USER}\`;" | mysql -u root -p$MYSQL_ROOT_PASSWORD
echo "FLUSH PRIVILEGES;" | mysql -u root -p$MYSQL_ROOT_PASSWORD

service mariadb stop
mysqld_safe

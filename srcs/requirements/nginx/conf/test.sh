rm /etc/nginx/sites-available/*
cp ./default /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/
rm /etc/nginx/nginx.conf
cp ./nginx.conf /etc/nginx

# certificat ssl
cd /etc
mkdir .mkcert
cd .mkcert
wget -O mkcert https://github.com/FiloSottile/mkcert/releases/download/v1.2.0/mkcert-v1.2.0-linux-amd64
chmod +x mkcert
apt-get -y install libnss3-tools
./mkcert -install
./mkcert localhost

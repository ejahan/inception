FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx \
					openssl \
					wget

COPY ./conf/ /root/

WORKDIR /root/

RUN chmod 777 test.sh
RUN ./test.sh

# RUN	rm /etc/nginx/nginx.conf
# RUN	mv ./nginx.conf /etc/nginx/

# # RUN rm /etc/nginx/sites-enabled/*
# # RUN cp ./default /etc/nginx/sites-available
# # RUN cp ./default /etc/nginx/sites-enabled
# # RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/
# RUN cd /etc
# RUN mkdir .mkcert
# RUN cd .mkcert
# RUN wget -O mkcert https://github.com/FiloSottile/mkcert/releases/download/v1.2.0/mkcert-v1.2.0-linux-amd64
# RUN chmod +x mkcert
# RUN apt-get -y install libnss3-tools
# RUN ./mkcert -install
# RUN ./mkcert localhost


# RUN cd /etc
# RUN apt-get -y install git
# RUN git clone https://github.com/letsencrypt/letsencrypt
# # cd ./letsencrypt/letsencrypt-auto-source
# RUN ./letsencrypt/letsencrypt-auto-source/letsencrypt-auto --help
# RUN mkdir /etc/letsencrypt/live-ecdsa/
# # RUN mkdir live-ecdsa/
# RUN mkdir /etc/letsencrypt/live-ecdsa/abyssproject.net
# # RUN mkdir live-ecdsa/abyssproject.net
# # RUN cd /etc/letsencrypt/live-ecdsa/abyssproject.net
# WORKDIR /etc/letsencrypt/live-ecdsa/abyssproject.net/
# RUN mkdir letmp
# RUN openssl ecparam -genkey -name secp384r1 > privkey-p384.pem
# RUN openssl req -new -sha256 -key privkey-p384.pem -subj "/CN=localhost" -reqexts SAN -config <(cat /etc/ssl/openssl.cnf <(printf "[SAN]\nsubjectAltName=DNS:localhost,DNS:www.localhost")) -outform der -out csr-p384.der

# RUN cd letmp
# RUN /etc/letsencrypt/letsencrypt-auto certonly -a webroot --email mail@localhost --webroot-path /www/localhost/ --csr /etc/letsencrypt/live-ecdsa/localhost/csr-p384.der --renew-by-default --agree-tos
# RUN cat 0001* > /etc/letsencrypt/live-ecdsa/localhost/chain.pem

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]


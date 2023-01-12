FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx \
					openssl \
					wget

COPY ./conf/ /root/

WORKDIR /root/

RUN chmod 777 test.sh
RUN ./test.sh

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]

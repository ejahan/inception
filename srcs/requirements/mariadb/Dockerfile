FROM debian:buster

COPY ./conf/ /root/
WORKDIR /root/

RUN apt-get -y update
RUN apt-get -y install curl software-properties-common gnupg2
RUN apt-get -y upgrade
RUN apt-get update && apt-get -y full-upgrade

EXPOSE 3306

ENTRYPOINT ["bash", "test.sh"]

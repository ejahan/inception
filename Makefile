# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejahan <ejahan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/21 19:50:42 by ejahan            #+#    #+#              #
#    Updated: 2022/11/27 18:28:21 by ejahan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# build:
# 		cd ./srcs && docker-compose build

up:
		sudo mkdir /home/ejahan/data/WordPress
		sudo mkdir /home/ejahan/data/DB
		cd ./srcs && docker-compose up -d

start:
		cd ./srcs && docker-compose start

down:
		sudo rm -rf /home/ejahan/data/*
		cd ./srcs && docker-compose down

stop:
		cd ./srcs && docker-compose stop

ps:
		cd ./srcs && docker-compose ps

images:
		cd ./srcs && docker images

.PHONY: build up start down stop ps

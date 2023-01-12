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

all:	up

up:
		sudo mkdir -p /home/ejahan/data/WordPress
		sudo mkdir -p /home/ejahan/data/DB
		cd ./srcs && docker-compose up

start:
		cd ./srcs && docker-compose start

down:
		cd ./srcs && docker-compose down

stop:
		cd ./srcs && docker-compose stop

ps:
		cd ./srcs && docker-compose ps

images:
		cd ./srcs && docker images

clean:
		sudo rm -rf /home/ejahan
		sudo rm -rf /home/ejahan

fclean:	down clean
		docker rmi -f $(shell docker images -qa)

.PHONY: all up start down stop ps images clean fclean

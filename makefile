docker_php = docker_template_php-fpm_1
docker_nginx = docker_template_nginx_1
docker_mysql = docker_template_mysql_1

#some commands
start: #Containers start
	@sudo docker-compose up -d

stop: #Stop
	@sudo docker-compose stop

build: #Stop
	@sudo docker-compose build

show_containers:
	@sudo docker ps

connect_php:
	@sudo docker exec -it $(docker_php) bash

connect_nginx:
	@sudo docker exec -it $(docker_nginx) bash

connect_mysql:
	@sudo docker exec -it $(docker_mysql) bash
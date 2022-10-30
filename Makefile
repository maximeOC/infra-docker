start: 
	git pull 
	# git pull -C front
	# git pull -C back
	docker-compose up

stop:
	# cd ./front && git add . && git commit -m "commit message" && git push && cd ..
	# cd ./back && git add . && git commit -m "commit message" && git push
	docker-compose stop

#restart:
#	docker stop $$(docker ps -a -q)
#	docker rm $$(docker ps -a -q)
#	make start

db-connect:
	@echo "vous allez etre connectés à la base de donnée chakal !"
	@docker-compose exec db sh -c "mysql -h db -u max -p'password' "

save:
	# git add .
	@echo "Save your infrastructure"
	@git commit -am "Update"
	@git push

d:
	@echo "destruction des conteneurs"
	docker-compose down -v

indb:
	docker exec -it infra-docker_db_1 bash

inphp:
	docker exec -it infra-docker_php_1  bash

innode:
	docker exec -it infra-docker_node_1 bash

test:
	@echo "lancement des tests unitaires"
	docker exec -it docker-compose_tuto_symfo sh -c "cd project && composer test && exit &&/bin/bash"

fixtures:
	@echo "vous allez remplir votre base de données !!!"
	docker exec -it docker-compose_tuto_symfo sh -c "cd project && composer fixtures && exit && /bin/bash"
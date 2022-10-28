start: 
	git pull 
	# git pull -C front
	# git pull -C back
	docker-compose up

stop:
	# cd ./front && git add . && git commit -m "commit message" && git push && cd ..
	# cd ./back && git add . && git commit -m "commit message" && git push
	docker-compose stop

db-connect:
	@echo "vous allez etre connectés à la base de donnée chakal !"
	@docker-compose exec db sh -c "mysql -h db -u max -p'password' "

save:
	# git add .
	@echo "Save your infrastructure"
	@git commit -am "Update"
	@git push 
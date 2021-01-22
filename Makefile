test:
	@make destroy
	@make build
	@make up
	@make destroy

up:
	@make build
	@docker-compose up
	@exit
	@make destroy

.PHONY: build
build:
	@docker-compose build --no-cache --force-rm

destroy:
	@docker-compose down --rmi all --volumes --remove-orphans
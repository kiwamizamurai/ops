.DEFAULT_GOAL := help

.PHONY: help
help: ## help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

.PHONY: up
up: ## wake up all services
	docker-compose up -d

.PHONY: down
down: ## machine down
	docker-compose down

.PHONY: bash
bash: ## Dive into jupyter container
	docker exec -it mj-notebook bash
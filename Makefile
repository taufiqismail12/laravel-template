DOCKER_COMPOSE=docker-compose
DOCKER_EXEC=docker exec -i app

## Initialization
init-dev:
	rm -rf .env
	cp .env.example .env

start-dev:
	$(DOCKER_COMPOSE) up -d

stop-dev:
	$(DOCKER_COMPOSE) stop

down-dev:
	$(DOCKER_COMPOSE) down

install-laravel:
	$(DOCKER_EXEC) composer install
	$(DOCKER_EXEC) php artisan key:generate
	$(DOCKER_EXEC) php artisan cache:clear
	$(DOCKER_EXEC) php artisan config:clear
	$(DOCKER_EXEC) php artisan config:cache

run-into-container:
	docker exec -it app sh

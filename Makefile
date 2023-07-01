# create and start container
compose:
	docker-compose up

# run tests
# --exit-code-from ->Return the exit code of the selected service container. Implies --abort-on-container-exit
# --abort-on-container-exit -> Stops all containers if any container was stopped. Incompatible with -d
compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

# run a one-off command on a service
compose-install:
	docker-compose run --rm app npm ci

# запуск тестов с использованием Docker Compose
ci:
	docker-compose -f docker-compose.yml up



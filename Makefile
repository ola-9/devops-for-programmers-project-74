# create and start container
compose:
	docker-compose up

# run tests
compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

# run a one-off command on a service
compose-install:
	docker-compose run --rm app npm ci

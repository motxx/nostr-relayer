all: build up
build:
	docker compose build
up:
	docker compose up -d
down:
	docker compose down -v
logs:
	docker compose logs -f
logs-relay:
	docker compose logs -f relay
prune:
	yes | docker system prune

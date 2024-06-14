all: build up
deploy: build up prune
build:
	cd cmd && $(MAKE) build
up:
	cd cmd && $(MAKE) up
down:
	cd cmd && $(MAKE) down
logs:
	cd cmd && $(MAKE) logs
logs-relay:
	cd cmd && $(MAKE) logs-relay
prune:
	cd cmd && $(MAKE) prune

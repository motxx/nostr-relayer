.PHONY: all deploy build up down logs logs-relay prune

CMD_DIR=cmd

all: build up

deploy: build up prune

build:
	cd $(CMD_DIR) && $(MAKE) build

up:
	cd $(CMD_DIR) && $(MAKE) up

down:
	cd $(CMD_DIR) && $(MAKE) down

logs:
	cd $(CMD_DIR) && $(MAKE) logs

logs-relay:
	cd $(CMD_DIR) && $(MAKE) logs-relay

prune:
	cd $(CMD_DIR) && $(MAKE) prune

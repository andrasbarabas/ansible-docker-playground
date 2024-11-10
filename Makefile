.PHONY: all
all:
	@$(MAKE) build

.PHONY: build
build:
	@$(MAKE) run

.PHONY: connect
connect:
	@docker exec -it controller /bin/bash -c "sshpass -p pass ssh -o StrictHostKeyChecking=no target@target"

.PHONY: controller
controller:
	@docker exec -it controller bash

.PHONY: target
target:
	@docker exec -it target bash

.PHONY: run
run:
	@docker compose up --build

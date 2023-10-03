DOCKER_COMPOSE=docker compose
DOCKER=docker

SIAFC=/var/www/projects/siafc
CENTRAL=/var/www/projects/portal_contribuintes

ps:
	$(DOCKER_COMPOSE) ps
up:
	$(DOCKER_COMPOSE) up -d
down:
	$(DOCKER_COMPOSE) down
restart:
	$(DOCKER_COMPOSE) restart
postgres:
	$(DOCKER_COMPOSE) exec db_postgres bash
mysql:
	$(DOCKER_COMPOSE) exec db_mysql bash
bash:
	$(DOCKER_COMPOSE) exec app bash

# app:
# 	$(DOCKER_COMPOSE) exec -w $(SIAFC) app $(c)

# siafc:
# 	$(DOCKER_COMPOSE) exec -w $(SIAFC) app bash
# central:
# 	$(DOCKER_COMPOSE) exec -w $(CENTRAL) app bash

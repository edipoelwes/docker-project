DOCKER_COMPOSE=docker compose
DOCKER=docker

SIAFC=/var/www/siafc
NFSE=/var/www/nfse

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

siafc:
	$(DOCKER_COMPOSE) exec -w $(SIAFC) app bash
app_siafc:
	$(DOCKER_COMPOSE) exec -w $(SIAFC) app $(c)

nfse:
	$(DOCKER_COMPOSE) exec -w $(NFSE) app bash
app_nfse:
	$(DOCKER_COMPOSE) exec -w $(NFSE) app $(c)

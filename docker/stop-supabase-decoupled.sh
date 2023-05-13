#!/bin/sh

# stop the Middleware services
docker compose -f docker-compose-decoupled-middleware.yml stop

# stop the DB service
docker compose -f docker-compose-decoupled-db.yml stop
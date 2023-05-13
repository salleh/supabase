#!/bin/sh

# make sure the network exist
docker network create sbnet > /dev/null 2>&1

# start the DB service
docker compose -f docker-compose-decoupled-db.yml start

# start the Middleware services
docker compose -f docker-compose-decoupled-middleware.yml start
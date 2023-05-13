#!/bin/sh

# remove the Middleware services
docker compose -f docker-compose-decoupled-middleware.yml down

# remove the DB service
docker compose -f docker-compose-decoupled-db.yml down

# delete the shared network
docker network rm sbnet
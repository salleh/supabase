#!/bin/sh

CUR_PROJECT_NAME="${PROJECT_NAME}"

# remove the Middleware services
docker compose -p ${CUR_PROJECT_NAME}-mw -f docker-compose-decoupled-middleware.yml down

# remove the DB service
docker compose -p ${CUR_PROJECT_NAME}-db -f docker-compose-decoupled-db.yml down

# delete the shared network
docker network rm ${PROJECT_NAME}
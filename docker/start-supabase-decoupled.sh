#!/bin/sh

CUR_PROJECT_NAME="${PROJECT_NAME:-supabase}"

# make sure the network exist
docker network create ${CUR_PROJECT_NAME} > /dev/null 2>&1

# start the DB service
docker compose -p ${CUR_PROJECT_NAME}-db -f docker-compose-decoupled-db.yml start

# start the Middleware services
docker compose -p ${CUR_PROJECT_NAME}-mw -f docker-compose-decoupled-middleware.yml start
#!/bin/sh

CUR_PROJECT_NAME="${PROJECT_NAME:-supabase}"

# create a shared network
docker network create ${CUR_PROJECT_NAME}

# start the DB service
docker compose -p ${CUR_PROJECT_NAME}-db -f docker-compose-decoupled-db.yml up -d

# start the Middleware services
docker compose -p ${CUR_PROJECT_NAME}-mw -f docker-compose-decoupled-middleware.yml up -d
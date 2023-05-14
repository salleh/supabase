#!/bin/sh

CUR_PROJECT_NAME="${PROJECT_NAME:-supabase}"

# stop the Middleware services
docker compose -p ${CUR_PROJECT_NAME}-mw -f docker-compose-decoupled-middleware.yml stop

# stop the DB service
docker compose -p ${CUR_PROJECT_NAME}-db -f docker-compose-decoupled-db.yml stop
#!/bin/sh

# create a shared network
docker network create sbnet

# start the DB service
docker compose -p supabase -f docker-compose-decoupled-db.yml up -d

# start the Middleware services
docker compose -p supabase -f docker-compose-decoupled-middleware.yml -f docker-compose-logging-decoupled-middleware.yml up -d
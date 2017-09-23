#!/usr/bin/env sh

##############################################################################
##
##  Restart MongoDB contaner
##
##############################################################################

warn ( ) {
    echo "$*"
}

warn "Currently running docker images"
docker ps -a

warn "Killing currently running docker image..."
docker kill potic-mongodb; docker rm potic-mongodb

warn "Pulling latest docker image..."
docker pull mongo:3.4.9

warn "Starting docker image..."
docker run --name potic-mongodb -v /data/mongodb:/data/db -d mongo:3.4.9 --auth

warn "Currently running docker images"
docker ps -a

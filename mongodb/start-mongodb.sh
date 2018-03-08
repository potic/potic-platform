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

warn "Starting docker image..."
docker run --name potic-mongodb --restart on-failure -v /mnt/data/mongodb:/data/db -d mongo:3.6 --auth

warn "Currently running docker images"
docker ps -a

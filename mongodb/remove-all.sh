#!/usr/bin/env sh

##############################################################################
##
##  Remove all MongoDB related data.
##
##############################################################################

warn ( ) {
    echo "$*"
}

warn "Currently running docker images"
docker ps -a

warn "Killing currently running docker image..."
docker kill potic-mongodb; docker rm potic-mongodb

warn "Remove all MongoDB data..."
rm -rf /mnt/data/mongodb

warn "Currently running docker images"
docker ps -a

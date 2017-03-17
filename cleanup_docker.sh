#!/usr/bin/env bash


docker rm -v $(docker ps -a -q)

#docker rmi -f $(docker images -a | grep -v IMAGE | awk "{print \$3}")
docker rmi -f $(docker images -a | grep "^<none>" | awk "{print \$3}")
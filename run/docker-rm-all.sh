#!/bin/sh
# https://stackoverflow.com/a/30311197/10245
docker rm -f $(docker ps -a -q)
docker rmi -f  $(docker images -q)
# https://stackoverflow.com/a/40654726/10245
docker volume rm $(docker volume ls -q --filter dangling=true)

#!/bin/sh
# setup on Ubuntu 16.04 LTS, hosted on bytemark vps
# https://docs.docker.com/compose/install/#install-compose-on-linux-systems
# needs root
apt install docker.io curl
dockerComposeVersion=1.15.0
# https://stackoverflow.com/a/42273713/10245
apt-get purge docker-compose
curl -L https://github.com/docker/compose/releases/download/$dockerComposeVersion/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version

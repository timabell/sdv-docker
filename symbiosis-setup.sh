#!/bin/sh
# For setting up docker on bytemark's symbiosis OS on shared hosting.
# https://symbiosis.bytemark.co.uk/
# https://docs.docker.com/compose/install/#install-compose-on-linux-systems
# needs root
apt install docker curl
dockerComposeVersion=1.5.2
curl -L https://github.com/docker/compose/releases/download/$dockerComposeVersion/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
udo chmod +x /usr/local/bin/docker-compose
docker-compose --version

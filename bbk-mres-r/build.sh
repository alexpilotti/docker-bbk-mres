#!/bin/bash
set -e
# Set the env var GH_TOKEN
# See https://github.com/settings/personal-access-tokens
docker build . -t bbk-mres-r --build-arg GH_TOKEN=$GH_TOKEN
docker tag bbk-mres-r:latest registry.bbk-mres:5000/bbk-mres-r:latest
docker push registry.bbk-mres:5000/bbk-mres-r:latest

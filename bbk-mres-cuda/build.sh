#!/bin/bash
set -e
# Set the env var GH_TOKEN
# See https://github.com/settings/personal-access-tokens
docker build . -t bbk-mres-cuda --build-arg GH_TOKEN=$GH_TOKEN
docker tag bbk-mres-cuda:latest registry.bbk-mres:5000/bbk-mres-cuda:latest
docker push registry.bbk-mres:5000/bbk-mres-cuda:latest

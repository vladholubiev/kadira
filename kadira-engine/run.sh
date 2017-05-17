#!/usr/bin/env bash

docker build -t kadira-engine .
docker run -it -e MONGO_URL=$KADIRA_MONGO_URL -e MONGO_SHARD_URL_one=$KADIRA_MONGO_URL -e PORT=11011 -p 11011:11011 kadira-engine

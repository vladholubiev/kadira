#!/usr/bin/env bash

docker build -t kadira-rma .
docker run -it -e MONGO_URL=$KADIRA_MONGO_URL kadira-rma

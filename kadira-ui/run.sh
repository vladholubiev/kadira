#!/bin/bash

#meteor build .

docker build -t kadira-ui .

docker run --rm -it \
  -e MONGO_URL=$KADIRA_MONGO_URL \
  -p 4000:4000 \
  kadira-ui

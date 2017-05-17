#!/bin/bash

#meteor build .

docker run --rm -it \
  -e ROOT_URL=http://localhost:4000 \
  -e BUNDLE_FILE=/home/meteor/build.tar.gz \
  -v `pwd`/kadira-ui.tar.gz:/home/meteor/build.tar.gz \
  -e MONGO_URL=$KADIRA_MONGO_URL \
  -e METEOR_SETTINGS="$(cat settings.json)" \
  -e RELEASE=1.4.3.2 \
  -p 4000:4000 \
  -e PORT=4000 \
  ulexus/meteor

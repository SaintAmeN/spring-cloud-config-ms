#!/bin/bash
docker rmi apss-config-server
mvn package
docker build -t apss-config-server -f docker/Dockerfile .
docker save apss-config-server -o apss-config-server.tar

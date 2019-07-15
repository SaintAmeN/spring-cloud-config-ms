#!/bin/bash
docker rmi apss-config-ms
mvn package
docker build -t apss-config-ms -f docker/Dockerfile .
docker save apss-config-ms -o apss-config-ms.tar

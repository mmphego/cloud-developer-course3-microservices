#!/bin/bash

docker-compose -f ../udacity-c3-deployment/docker/docker-compose-build.yaml build --parallel
docker-compose -d -f ../udacity-c3-deployment/docker/docker-compose.yaml up

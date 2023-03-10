#!/bin/bash

CONTAINER_NAME="node-http-server"

docker build -t node12 .

docker run -d --name $CONTAINER_NAME -p 8080:8080 node12

curl localhost:8080

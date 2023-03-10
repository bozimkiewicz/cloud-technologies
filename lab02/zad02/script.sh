#!/bin/bash

CONTAINER_NAME="node-express-server"

docker build -t node14 .

docker run -d --name $CONTAINER_NAME -p 8080:8080 node14

sleep 5

curl localhost:8080
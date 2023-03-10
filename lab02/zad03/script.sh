#!/bin/bash

docker run -d --name mongo -p 27017:27017 mongo

docker pull node:16

docker build -t express-mongodb-app .

docker run -p 8080:8080 --name express-mongo --link mongo:mongo -d express-mongodb-app

sleep 5

curl localhost:8080
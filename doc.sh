#!/bin/bash
set -ex
docker-compose build && docker-compose up

docker ps -q |xargs docker inspect |grep '"IPAddress": '

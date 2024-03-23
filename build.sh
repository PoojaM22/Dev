#!/bin/bash

Imagename="nginx"
tag="latest"

docker build -t $Imagename:$tag .
docker-compose up -d

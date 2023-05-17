#!/bin/bash

source .env

docker tag mkcert:$VERSION danelsan/mkcert:$VERSION
docker tag mkcert:$VERSION danelsan/mkcert:latest

docker login
docker push danelsan/mkcert:$VERSION
docker push danelsan/mkcert:latest
docker logout






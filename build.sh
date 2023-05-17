#!/bin/bash

source .env

docker build -t mkcert:$VERSION -f Dockerfile .



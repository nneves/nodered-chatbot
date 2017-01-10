#!/bin/sh

docker rm /nodered
docker build --no-cache -t nneves-nodered .
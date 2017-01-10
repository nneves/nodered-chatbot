#!/bin/sh

docker run -it \
-v "$PWD/conf/package.json:/usr/src/node-red/package.json" \
-v "$PWD/data:/usr/src/node-red/.node-red/" \
-p 1880:1880 \
-e FLOWS=gs_flows.json \
--name nodered \
nneves-nodered

docker rm /nodered
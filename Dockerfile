FROM nodered/node-red-docker:0.14.6

WORKDIR /usr/src/node-red

USER node-red

# DOCKER BUILD CONTEXT: CACHE REQUIRED NPM PACKAGES INTO BUILT IMAGE
# package.json contains Node-RED NPM module and node dependencies
COPY package.json /usr/src/node-red/
RUN npm install

# DOCKER RUN CONTEXT: NPM INSTALL: allows for package.json to change
# during operations, after docker container restart will add missing packages
CMD npm install --userDir /usr/src/node-red && npm start --userDir /data
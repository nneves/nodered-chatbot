FROM nodered/node-red-docker:0.14.6

WORKDIR /usr/src/node-red

USER node-red

# package.json contains Node-RED NPM module and node dependencies
COPY package.json /usr/src/node-red/
RUN npm install

CMD npm install --userDir /usr/src/node-red && npm start --userDir /data
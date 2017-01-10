FROM nodered/node-red-docker:0.14.6

CMD npm install --userDir /usr/src/node-red && npm start --userDir /data
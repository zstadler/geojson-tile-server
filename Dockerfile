FROM node:12.19.0-alpine3.12
MAINTAINER toshelp

WORKDIR /home/node
RUN apk add git && git clone https://github.com/toshelp/geojson-tile-server.git
RUN cd geojson-tile-server && npm install -g pnpm && pnpm i

WORKDIR /home/node/geojson-tile-server
CMD ["pnpm", "start"]
EXPOSE 8123


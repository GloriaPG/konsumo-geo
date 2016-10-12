# Base image is node.js
FROM node:5.11.0
# Author: Daniel Ortega
MAINTAINER Gloria Palma <ing.gloriapalmagonzalez@gmail.com>
RUN mkdir -p /home/gatero/app &&\
groupadd -r konsumoGeo &&\
useradd -r -g konsumoGeo konsumoGeo &&\
usermod -m -d /home/konsumoGeo konsumoGeo;
WORKDIR /home/konsumoGeo/app
EXPOSE 3000
USER konsumoGeo

# docker build -t konsumo-api:1 .
# docker run -it --rm -v $PWD:/home/konsumoGeo/app -p 3000:3000 node:5.11.0 bash
# docker run -d --name konsumo-geo-api -v $PWD:/home/konsumoGeo/app -p 3000:3000 konsumo-geo-api:1 node .
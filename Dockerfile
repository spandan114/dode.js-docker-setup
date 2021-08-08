#Step 1 install os

FROM node:alpine

#Step 2 install a software

WORKDIR /usr/nodeapp

COPY package*.json ./

RUN npm ci

RUN npm install

COPY ./ ./

RUN apk add binutils

EXPOSE 5000

#Step 2.5 configure that software

RUN apk add isl

#Step 3 set default comand

CMD [ "npm","start" ]
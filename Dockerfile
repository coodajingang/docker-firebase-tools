FROM node:16-alpine

ENV SHELL /bin/bash
ADD . /src
WORKDIR /src

#RUN echo 'deb http://ftp.debian.org/debian stretch-backports main' | tee /etc/apt/sources.list.d/stretch-backports.list
#RUN apt-get install -y openjdk-17-jre-headless
RUN apk update
RUN apk add --no-cache openjdk-17-jre
# Install dependencies for cloud functions
#WORKDIR /src/functions
#RUN npm install

# Install dependencies for firestore tests
#WORKDIR /src/test
#RUN npm install

# Compile ts
#WORKDIR /src/functions
#RUN npm run build

WORKDIR /src
RUN npm i -g firebase-tools
RUN firebase --version
EXPOSE  4400 4500 5000 5001 8001 8080 8085 9000 9099

## DONOT USE THIS  
## NOT WORK

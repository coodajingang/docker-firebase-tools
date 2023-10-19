FROM node:14.5

ADD . /src
WORKDIR /src

RUN echo 'deb http://ftp.debian.org/debian stretch-backports main' | tee /etc/apt/sources.list.d/stretch-backports.list
RUN apt-get install -y openjdk-17-jre-headless

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

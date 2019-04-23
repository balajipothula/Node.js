#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 31 August 2016,
# Description : Installing tomcat Docker image on Ubuntu.

# Note: Please run this script with sudo privilage.

# uninstalling old versions of docker.
apt -y remove docker docker-engine docker.io

# updating packages index.
apt update

# upgrading packages.
DEBIAN_FRONTEND=noninteractive apt -y upgrade

# installing packages to allow apt to use repository over https.
apt -y install apt-transport-https \
               ca-certificates     \
               curl                \
               software-properties-common

# adding docker official gpg key.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# setting up the stable docker repository.
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# updating apt package index.
apt update

# installing latest version of docker ce.
apt -y install docker-ce docker-ce-cli containerd.io

# extracting "webapp" tar ball and removing.
tar xzf $HOME/node.js-8.14.0/webapp.tar.gz -C $HOME/node.js-8.14.0/ && rm $HOME/node.js-8.14.0/webapp.tar.gz

# pulling node.js-8.14.0 image from docker hub.
docker pull balajipothula/node.js:8.14.0

# running docker container with name(--name) "nodejs" as daemon(-d),
# stdin(-i) with volume(-v) "webapp" on port(-p) "3000".
docker run --name nodejs -d -i -p 3000:3000 --privileged -v $HOME/node.js-8.14.0/webapp:/webapp balajipothula/node.js:8.14.0 sh

# executing docker container by name with stdin(-i), starting node.js server.
docker exec -i nodejs node /webapp/index.js &

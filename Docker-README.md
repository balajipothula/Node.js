## Node.js with Redis
### Author: BALAJI POTHULA <*balaji.pothula@techie.com*>

alpine linux image with nodejs, redis.

##### Extracting "node.js-8.14.0.docker" tar ball.
tar xzf node.js-8.14.0.docker.tar.gz

##### Installing "docker" on Ubuntu.
sudo sh install-docker.sh

##### Pulling image from Docker Hub.
docker pull balajipothula/node.js:8.14.0

##### Creating or Building image from Dockerfile.
##### username/repo:tag.
docker build -t balajipothula/node.js:8.14.0 .

##### Saving docker image offline into local machine.
docker save -o node.js-8.14.0.docker balajipothula/node.js:8.14.0

##### Loading offline docker image into machine.
docker load -i node.js-8.14.0.docker

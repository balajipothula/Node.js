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

##### Running docker container with application inside the 
##### volume(-v) stdin(-i) as daemon(-d) on port(-p) 80.
docker run --name webapp -d -i -p 80:80 --privileged -v $HOME/Node.js/webapp:/webapp balajipothula/node.js:8.14.0 node /webapp/app80.js &

##### Running docker container with volume(-v) stdin(-i) daemon(-d) on port(-p) 80.
##### Note: It will create a volume inside the container
docker run --name webapp -d -i -p 80:80 --privileged -v $HOME/Node.js/webapp:/webapp balajipothula/node.js:8.14.0 sh

##### Executing docker container by name with stdin(-i), node process with js app.
docker exec -i webapp node /webapp/app80.js &

##### Checking docker container Process Status.
docker exec -i -t webapp ps -A

##### Login into docker container.
docker exec -i -t webapp sh

##### Starting docker container with name.
docker start webapp

##### Stoping  docker container with name.
docker stop webapp

##### Removing docker container with name.
docker rm webapp

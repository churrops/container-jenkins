#!/bin/bash

repository_url="churrops"
repository_jenkins_master="$repository_url/jenkins/jenkins-master"
repository_jenkins_slave_nodejs="$repository_url/jenkins/jenkins-slave-nodejs"
repository_jenkins_slave_php7="$repository_url/jenkins/jenkins-slave-php7"
repository_jenkins_slave_php56="$repository_url/jenkins/jenkins-slave-php56"

tag_jenkins=$(grep "ARG" build/jenkins-master/Dockerfile | awk -F : '{print $2}')
tag_nodejs="slave-nodejs-9.11.1"
tag_php="slave-php7-fpm"
tag_php56="slave-php56-fpm"
build_dir="build"

#$(aws ecr get-login --no-include-email --region sa-east-1)

# Jenkins Master
docker build -t $repository_jenkins_master:$tag_jenkins -t $repository_jenkins_master:latest build/jenkins-master
#docker push $repository_jenkins_master:$tag_jenkins
#docker push $repository_jenkins_master:latest

## Slave NodeJS
#docker build -t $repository_url:$tag_nodejs -t $repository_url:latest build/jenkins-slave-nodejs/
#docker push $repository_url:$tag_nodejs 
#docker push $repository_url/jenkins:latest
#
## Slave PHP7
#docker build -t $repository_url:$tag_php -t $repository_url:$tag_php build/jenkins-slave-php/
#docker push $repository_url:$tag_php
#docker push $repository_url:latest
#
## Slave PHP56
#docker build -t $repository_url:$tag_php56 -t $repository_url:$tag_php56 build/jenkins-slave-php56/
#docker push $repository_url:$tag_php56 
#docker push $repository_url:latest

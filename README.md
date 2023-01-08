# Run Jenkins in a Docker container

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)


- how to run jenkins in docker container
- ✨jenkins  

## Requeired
 - First of all, you need to have Docker installed on your computer. If. you don’t have it already, use the link below to download and install it https://docs.docker.com/get-docker/

 - Once you download and set up docker on your computer, you can get the Jenkins via the Docker run command as follows.
 
```sh
mkdir jenkinsContanier 
cd jenkinsContanier
git clone https://github.com/inasribrahim/jenkins_maven_docker.git
cd jenkins_maven_docker
```

## Open powershell with privillage admin and navigate to dockerfile

```sh
docker build --tag="mavenwithjenkins" -f "<file_path>\jenkins-maven.dockerfile" .
```
 - dockerfile for install maven in jenkins server using jenkins/jenkins image

## Run custom jenkins in docker container

```sh
docker run -u root -p 8080:8080 -p 50000:50000 -d --rm -v jenkins_home:/var/jenkins_home_custom mavenwithjenkins
```

## Track custom jenkins container status 
```sh
docker ps
```
 - copy container id and trace the logs.

```sh
docker logs <container_id>
```

> Note: default admin user has been created and a password generated in /var/jenkins_home/secrets/initialAdminPassword.

## Extract password 
```sh
docker container exec <container_id> cat /var/jenkins_home/secrets/initialAdminPassword 
```

 ## Navigating to your localhost address in your preferred browser.
 
   - http://localhost:8080/

FROM jenkins/jenkins:lts
USER root

# Download wget 
RUN apt-get update && apt-get install -y wget

# Get maven 3.6.3
RUN wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz


# Install maven 
RUN tar -xvf apache-maven-3.6.3-bin.tar.gz -C /opt/
RUN ln -s /opt/apache-maven-3.6.3 /opt/maven
RUN ln -s /opt/maven/bin/mvn /usr/local/bin
RUN rm -f /tmp/apache-maven-3.6.3-bin.tar.gz
ENV MAVEN_HOME = /opt/maven

# Remove archive download file
RUN apt-get clean 

USER jenkins


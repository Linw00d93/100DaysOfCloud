FROM ubuntu:18.04


RUN\
  apt-get -y update && \
  apt-get install -y tzdata && \
  apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg && \
  apt-get -y update && \
  apt-get -y install sudo && \
  apt-get -y install git && \
  git --version && \
  git clone https://github.com/docker/docker-install.git 
RUN ls && cd docker-install && \ 
 ls && bash install.sh && \
 sudo docker -v && \
 sudo service docker start


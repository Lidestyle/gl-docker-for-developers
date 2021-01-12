#!/usr/bin/env bash

## Install Docker
apt update

apt -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt update
apt install -y docker-ce docker-ce-cli containerd.io

## Grant permissions to run docker for vagrant user
getent group docker || groupadd docker
usermod -aG docker vagrant
su - vagrant -c 'newgrp docker'
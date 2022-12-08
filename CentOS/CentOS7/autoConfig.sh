#! /bin/bash

# Author: Mochen
# Last update time: 2022/12/08
# This shell script is for [Ubuntu 20.04LTS]

######## Install docker (ref: official install document) ########

# Uninstall old versions
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

sudo yum install -y yum-utils

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo systemctl start docker

######## End installation of docker ########




#! /bin/bash

# Author: Mochen
# Last update time: 2022/12/08
# This shell script is for [Ubuntu 20.04LTS]

# Update the apt package index
yes y | sudo apt-get update

######## Install docker (ref: official install document) ########

# Uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

# Update the apt package index and install packages to allow apt to use a repository over HTTPS
yes y | sudo apt-get install ca-certificates curl gnupg lsb-release

# Add Docker’s official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Use the following command to set up the repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the apt package index
yes y | sudo apt-get update

# Install the latest version of docker
yes y | sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

######## Finish installation of docker ########

######## Install Oracle jdk8 jdk-8u131 #########

sudo mkdir /usr/java

cd /usr

sudo wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz

sudo tar -zxvf jdk-8u131-linux-x64.tar.gz -C /usr/java

sudo rm jdk-8u131-linux-x64.tar.gz

sudo sed '$a export JAVA_HOME=/usr/java/jdk1.8.0_131\nexport JRE_HOME=${JAVA_HOME}/jre\nexport CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib\nexport PATH=${JAVA_HOME}/bin:$PATH' /etc/profile

source /etc/profile

cd
######## Finish installation of jdk8 ########


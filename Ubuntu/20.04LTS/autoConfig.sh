#! /bin/bash

# Author: Mochen
# Last update time: 2022/12/08
# This shell script is for [Ubuntu 20.04LTS]

# Update the apt package index
yes y | sudo apt-get update

HOME_PATH=~/home/ubuntu

# Install JDK8
cd $HOME_PATH/QCSR/Ubuntu/20.04LTS

chmod 777 ./scripts/*

sudo ./scripts/autoConfigJDK8.sh


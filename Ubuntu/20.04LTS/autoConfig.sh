#! /bin/bash

# Author: Mochen
# Last update time: 2022/12/08
# This shell script is for [Ubuntu 20.04LTS]

# Update the apt package index
yes y | sudo apt-get update

# Install JDK8
cd /QCSR/Ubuntu/20.04LTS

sudo ./autoConfigJDK8.sh


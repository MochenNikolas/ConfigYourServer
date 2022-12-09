#! /bin/bash

# Author: Mochen
# Last update time: 2022/12/08
# This shell script is for [Ubuntu 20.04LTS]

function log()
{
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $@"
}

# Update the apt package index
yes y | sudo apt-get update

WORK_PATH=/home/ubuntu

# Install JDK8
cd $WORK_PATH/QCSR/Ubuntu/20.04LTS

chmod 777 ./scripts/*

log "Begin to run autoConfigJDK8.sh..."

sudo ./scripts/autoConfigJDK8.sh

log "Finsh run autoConfigJDK8.sh..."


#! /bin/bash

# For Ubuntu 20.04LTS

yes y | sudo apt-get update

sudo apt-get remove docker docker-engine docker.io containerd runc

yes y | sudo apt-get install ca-certificates curl gnupg lsb-release
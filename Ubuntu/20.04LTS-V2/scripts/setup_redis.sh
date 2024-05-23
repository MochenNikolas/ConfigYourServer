#!/bin/bash

# 安装 Redis
sudo docker run -d --name redis -p 6379:6379 redis

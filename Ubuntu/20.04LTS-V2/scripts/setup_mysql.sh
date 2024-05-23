#!/bin/bash

# 安装 MySQL
sudo docker run -d --name mysql -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 mysql:latest

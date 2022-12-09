#! /bin/bash

function log()
{
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] [autoConfigJDK8.sh] $@"
}



######## Install Oracle jdk8 jdk-8u131 #########

sudo mkdir /usr/java

cd /usr

log "Downloading jdk-8u131-linux-x64.tar.gz"
sudo wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz

log "Unzip jdk-8u131-linux-x64.tar.gz"
sudo tar -zxvf jdk-8u131-linux-x64.tar.gz -C /usr/java

log "Remove tar.gz file"
sudo rm jdk-8u131-linux-x64.tar.gz

sudo sed '$a export JAVA_HOME=/usr/java/jdk1.8.0_131\nexport JRE_HOME=${JAVA_HOME}/jre\nexport CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib\nexport PATH=${JAVA_HOME}/bin:$PATH' /etc/profile

log "Reload the /etc/profile"
source /etc/profile

cd
######## Finish installation of jdk8 ########
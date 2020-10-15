#!/bin/bash
apt update
curl https://get.docker.com/ | bash
usermod -m jenkins
sudo usermod -a -G docker jenkins
usermod -aG root jenkins
chmod 664 /var/run/docker.sock
chmod 777 /var/run/docker.sock
docker -H tcp://10.1.1.200:2375 run --rm -dit --name jenkins2 --hostname jenkins2 -p 9000:80 sreeharshav/rollingupdate:v5

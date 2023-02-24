#!/bin/bash

sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh

sudo docker network create --driver overlay --attachable --subnet 172.16.238.0/24 express-network

sudo docker build -t express-app /vagrant/app

sudo docker run -dti -p 27017:27017 --network express-network --ip 172.16.238.10 --name mongodb mongo:4

sudo docker service create --name express-api-app --network express-network --replicas 2 -dt -p 3001:3001 express-app
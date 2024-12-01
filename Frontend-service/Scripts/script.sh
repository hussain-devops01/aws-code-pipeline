#!/bin/bash

cd /home/ubuntu

docker-compose down
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <account-no>.dkr.ecr.us-east-1.amazonaws.com
docker pull <account-no>.dkr.ecr.us-east-1.amazonaws.com/arete:latest
docker-compose up -d

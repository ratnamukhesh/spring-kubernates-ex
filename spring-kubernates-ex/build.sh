#!/bin/bash
set -e

DOCKER_USERNAME="ratna1987"
DOCKER_PASSWORD="Docker@1987"
IMAGE_NAME="ratna/spring-kubernates"
TAG="latest"

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t $IMAGE_NAME:$TAG .

docker push $IMAGE_NAME:$TAG
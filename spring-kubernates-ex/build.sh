#!/bin/bash
set -e


IMAGE_NAME="ratna1987/spring-kubernates-ex"
TAG="latest"

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t $IMAGE_NAME:${BUILD_NUMBER} .

docker push $IMAGE_NAME:${BUILD_NUMBER}
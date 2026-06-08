#!/bin/bash
set -e

#aws version
IMAGE_NAME="springboot-eks"


aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 516606118353.dkr.ecr.us-east-2.amazonaws.com

docker build -t $IMAGE_NAME:${BUILD_NUMBER} .
docker tag $IMAGE_NAME:${BUILD_NUMBER} 516606118353.dkr.ecr.us-east-2.amazonaws.com/$IMAGE_NAME:${BUILD_NUMBER}

docker push 516606118353.dkr.ecr.us-east-2.amazonaws.com/$IMAGE_NAME:${BUILD_NUMBER}



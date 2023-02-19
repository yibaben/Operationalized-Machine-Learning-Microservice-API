#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=yibaben/devops-ml-microservice-kubernetes

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker --tag devops-ml-microservice-kubernetes $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest

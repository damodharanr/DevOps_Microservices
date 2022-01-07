#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=damodharanr/udaycityproject4devops

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u damodharanr
docker tag devopsapi $dockerpath

# Step 3:
# Push image to a docker repository
echo "Docker ID and Image pushing to docker hub: $dockerpath"
docker push $dockerpath

cmd /k
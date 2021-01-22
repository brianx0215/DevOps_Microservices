#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=brianx0215/udapredict:1.0

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u $1 -p $2

# Step 3:
# Push image to a docker repository
docker tag ${dockerpath} ${dockerpath}
docker push ${dockerpath}

echo "Docker ID and Image: $dockerpath"


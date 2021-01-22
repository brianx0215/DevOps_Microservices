#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=brianx0215/udapredict:1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udapredict --image=docker.io/${dockerpath} --labels="app=udapredict"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host

PREDICTION_POD=$(kubectl get pods -l app=udapredict -o jsonpath='{.items[0].metadata.name}')
kubectl port-forward "${PREDICTION_POD}" 8000:80

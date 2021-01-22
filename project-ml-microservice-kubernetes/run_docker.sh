#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag brianx0215/udapredict:1.0 .

# Step 2: 
# List docker images
docker images --all

# Step 3: 
# Run flask app
docker run -it -p 8000:80 brianx0215/udapredict:1.0
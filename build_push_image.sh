#!/bin/sh

# Build the image
docker build -t item-app:v1 .

# list the images
docker image ls

# Tag the image (rename)
docker tag item-app:v1 ghcr.io/sultanks4/item-app:v1

# define github token
export GITHUB_TOKEN=ghp_0 # replace with your token

# login github package with password from env variable
echo $GITHUB_TOKEN | docker login ghcr.io -u sultanks4 --password-stdin

# Push the image
docker push ghcr.io/sultanks4/item-app:v1
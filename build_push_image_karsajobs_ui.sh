#!/bin/sh

# build the image
docker build -t ghcr.io/sultanks4/karsajobs-ui:latest .

# login github package with password from env variable
echo $GITHUB_TOKEN | docker login ghcr.io -u sultanks4 --password-stdin

# Push the image
docker push ghcr.io/sultanks4/karsajobs-ui:latest
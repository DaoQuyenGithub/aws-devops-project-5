#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
DOCKER_REPOSITORY="devops-capstone-project"
CONTAINER_NAME="dquyen2806/devops-capstone-project"
VERSION="lastest"
# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="${DOCKER_USER}"/"${DOCKER_REPOSITORY}"

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u "${DOCKER_USER}" -p "${DOCKER_PWD}"
docker tag "${CONTAINER_NAME}":"${VERSION}" "${dockerpath}":"${VERSION}"

# Step 3:
# Push image to a docker repository
docker push "${dockerpath}":"${VERSION}"

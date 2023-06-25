#!/usr/bin/env bash

CONTAINER_NAME="dquyen2806/devops-capstone-project"
VERSION=1.000
CONTAINER_PORT=80
HOST_PORT=80
# Run flask app
docker run -p "${HOST_PORT}":"${CONTAINER_PORT}" "${CONTAINER_NAME}":"${VERSION}"

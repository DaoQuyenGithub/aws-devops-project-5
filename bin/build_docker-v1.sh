#!/usr/bin/env bash

CONTAINER_NAME="dquyen2806/devops-capstone-project"
VERSION=lastest

# Build image and add a descriptive tag
docker build --tag ${CONTAINER_NAME}:${VERSION} app-v1

#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Set vars
DOCKER_HUB_ID="dquyen2806"
DOCKER_REPOSITORY="devops-capstone-project"
DEPLOYMENT_NAME=${DOCKER_REPOSITORY}
CONTAINER_PORT=80
VERSION=lastest
dockerpath=${DOCKER_HUB_ID}/${DOCKER_REPOSITORY}:${VERSION}

# set aws configure
aws configure set aws_access_key_id "${AWS_ACCESS_KEY_ID}"
aws configure set aws_secret_access_key "${AWS_SECRET_ACCESS_KEY}"
aws configure set region "${AWS_DEFAULT_REGION}"
# Create config file
echo "Create config"
aws eks --region us-east-1 update-kubeconfig --name capstone-cluster
kubectl get svc
# Run the Docker Hub container with kubernetes
echo "Create deployment"
kubectl create deployment "${DEPLOYMENT_NAME}" --image="${dockerpath}"

kubectl expose deployment/"${DEPLOYMENT_NAME}" --type="LoadBalancer" --port "${CONTAINER_PORT}"

# List kubernetes resources
echo
echo "Listing deployments"
kubectl get deployments -o wide --all-namespaces
echo
echo "Listing services"
kubectl get services -o wide --all-namespaces
echo
echo "Listing pods"
kubectl get pods -o wide --all-namespaces
kubectl get nodes -o wide --all-namespaces


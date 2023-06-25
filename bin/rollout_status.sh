#!/usr/bin/env bash

#Vars
DEPLOYMENT_NAME="devops-capstone-project"
DOCKER_HUB_ID="dquyen2806"
DOCKER_REPOSITORY="devops-capstone-project"
DEPLOYMENT_NAME=${DOCKER_REPOSITORY}
VERSION=lastest
dockerpath=${DOCKER_HUB_ID}/${DOCKER_REPOSITORY}:${VERSION}
# get kube config
aws eks --region "${AWS_DEFAULT_REGION}" update-kubeconfig --name capstone-cluster
kubectl get svc

# get rollout status of cluster
kubectl patch deployment "${DEPLOYMENT_NAME}" -p "{\"spec\":{\"template\":{\"spec\":{\"containers\":[{\"name\":\"${DOCKER_REPOSITORY}\",\"image\":\"${dockerpath}\",\"imagePullPolicy\": \"Always\"}]}}}}"
kubectl rollout status deployment "${DEPLOYMENT_NAME}"
echo
kubectl get deployments -o wide

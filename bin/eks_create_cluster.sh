#!/usr/bin/env bash
echo "Creating cluster..."
aws configure set aws_access_key_id "${AWS_ACCESS_KEY_ID}"
aws configure set aws_secret_access_key "${AWS_SECRET_ACCESS_KEY}"
aws configure set region us-east-1
aws sts get-caller-identity
./bin/eksctl create cluster -f cluster.yml
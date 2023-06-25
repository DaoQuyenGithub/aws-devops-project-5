# Cloud DevOps Engineer Capstone project
Capstone project from Udacity's Cloud DevOps Engineer Nanodegree program. I developed a Continuous Integration and Continuous Deployment pipeline for a python application with a rolling deployment into a Kubernetes cluster.

## Overview
In this project you will apply the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. These include:

* Working in AWS
* Using CircleCi to implement Continuous Integration and Continuous Deployment
* Building pipelines
* Deploy cluster using eksctl and kubectls
* Building Docker containers in pipelines

## Application
The Application is based on a python3 script using flask to render a simple webpage in the user's browser. A requirements.txt is used to ensure that all needed dependencies come along with the Application.

## Explanations
1. `.circleci/config.yml`: for CircleCI configuration for pipelines
2. `app-v1/app.py`: my main python application version 1
3. `app-v2/app.py`: my main python application version 2
4. `Makefile`: the Makefile use with CircleCI
5. `bin`: the bin folder contain the shell script to create, install, build docker, create cluster, deploy
6. `cluster.yml`: EKS cluster definition file

## For rolling Development
I made two application which tagged v1 and v2 respectively for demonstrating the rolling update. I deployed the cluster with the v1 application first then updated the docker image to v2 and did the rolling update.

All screenshots are attached in screenshots folder.


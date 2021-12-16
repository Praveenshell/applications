#!/bin/bash

Kubectl apply -f voting-app-pod.yml
sleep 1
Kubectl apply -f voting-app-service.yml
sleep 1
Kubectl apply -f redis-pod.yml
sleep 1
Kubectl apply -f redis-service.yml
sleep 1
Kubectl apply -f postgres-pod.yml
sleep 1
Kubectl apply -f postgres-service.yml
sleep 1
Kubectl apply -f result-app-pod.yml
sleep 1
Kubectl apply -f result-app-service.yml
sleep 2
Kubectl apply -f worker-app-pod.yml

echo "Deployment completed"
~

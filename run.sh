#!/bin/bash

kubectl apply -f voting-app-pod.yml
sleep 1
kubectl apply -f voting-app-service.yml
sleep 1
kubectl apply -f redis-pod.yml
sleep 1
kubectl apply -f redis-service.yml
sleep 1
kubectl apply -f postgres-pod.yml
sleep 1
kubectl apply -f postgres-service.yml
sleep 1
kubectl apply -f result-app-pod.yml
sleep 1
kubectl apply -f result-app-service.yml
sleep 2
kubectl apply -f worker-app-pod.yml
echo "Deployment completed  run # kubect get svc "
~

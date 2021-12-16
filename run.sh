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
echo -e "\n"
echo -e "success \n"
echo -e "Voting App deployment completed run # kubectl get svc \n"
echo -e "Copy the External IP and run it in the browser \n"

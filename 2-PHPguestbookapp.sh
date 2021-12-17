#!/bin/bash
echo -e "PHP Guest Book App Deployment \n"
kubectl apply -f https://k8s.io/examples/application/guestbook/redis-leader-deployment.yaml
sleep 1
kubectl get pods
sleep 2
kubectl apply -f https://k8s.io/examples/application/guestbook/redis-leader-service.yaml
sleep 1
kubectl apply -f https://k8s.io/examples/application/guestbook/redis-follower-deployment.yaml
sleep 1
kubectl get pods
sleep 2
kubectl apply -f https://k8s.io/examples/application/guestbook/redis-follower-service.yaml
sleep 1
kubectl apply -f https://k8s.io/examples/application/guestbook/frontend-deployment.yaml
sleep 1
kubectl get pods -l app=guestbook -l tier=frontend
sleep 1
kubectl apply -f https://k8s.io/examples/application/guestbook/frontend-service.yaml
sleep 2
kubectl get pods
sleep 1
kubectl get services
sleep 3
echo -e "\n"
echo -e "Run this command # kubectl edit service frontend \n"
echo -e "Go to the last before line to change type ClusterIP to LoadBalancer \n"
echo -e "You can scale the deployment using cmd # kubectl scale deployment frontend --replicas=5 \n"

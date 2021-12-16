#!/bin/bash
echo -e "Removing PHP deployments"
kubectl delete deployment -l app=redis
kubectl delete service -l app=redis
kubectl delete deployment frontend
kubectl delete service frontend
sleep 2
kubectl get pods
sleep 1
echo -e "Delete complete\n"

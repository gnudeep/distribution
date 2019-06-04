#!/bin/bash

# Deploy Tiller
helm init

sleep 30s

kubectl apply -f helm-service-account.yaml

#### Deploy Cellery controller
#Create cellery-system ns by controller yamls
helm install --name cellery-controller controller

#### Deploy Mysql
helm install --name cellery-mysql mysql --namespace cellery-system

#### Deploy Istio
helm install --name istio istio --namespace istio-system

#### Deploy APIM
helm install --name gateway global-apim --namespace cellery-system

#### Deploy IDP in Cellery minimal runtime
#helm install --name idp global-idp --namespace cellery-system

#### Deploy SP Worker
helm install --name sp-worker sp-worker --namespace cellery-system

#### Deploy Observability Portal
helm install --name observability-portal observability-portal --namespace cellery-system

#### Deploy Nginx Ingress
#### On GCP with LB or on K8s in Docker for Desktop
#helm install --name cellery-ingress stable/nginx-ingress --namespace ingress-nginx
#### On Kubadm based K8s
helm install --name cellery-ingress stable/nginx-ingress --namespace ingress-nginx -f nginx-ingress/values.yaml

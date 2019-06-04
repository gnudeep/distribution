#!/bin/bash

# Clenaup Cellery Ingress
#helm del --purge cellery-ingress
#kubectl delete ns ingress-nginx

# Cleanup Observability Portal
helm del --purge observability-portal

# Cleanup SP Worker
helm del --purge sp-worker

# Cleanup APIM
helm del --purge gateway

# Cleanup IDP in Cellery minimal runtime
helm del --purge idp

# Cleanup Istio
kubectl delete -f istio/templates/crds.yaml -n istio-system
helm del --purge istio
# Todo fix the cleanup
kubectl delete ns istio-system

# Cleanup Mysql
helm del --purge cellery-mysql

# Clenaup Cellery controller
helm del --purge cellery-controller




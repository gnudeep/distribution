# Deploy Cellery Runtime using Helm

## Deploy Control Plane

#### Deploy Cellery controller
helm install --name cellery-controller controller

#### Deploy Mysql
helm install --name cellery-mysql --namespace cellery-system

#### Deploy Istio
$ helm install istio --name istio --namespace istio-system

#### Deploy APIM
helm install --name gateway global-apim --namespace cellery-system

#### Deploy Nginx Ingress
#### On GCP with LB or on K8s in Docker for Desktop
helm install stable/nginx-ingress --namespace ingress-nginx
#### On Kubadm based K8s
helm install --name cellery-ingress stable/nginx-ingress --namespace ingress-nginx -f nginx-ingress/values.yaml

# Celanup Cellery Runtime using Helm

### Clenaup Cellery controller
helm del --purge cellery-controller

#### Cleanup APIM
helm del --purge gateway

#### Cleanup Istio
 helm delete --purge istio

#### Cleanup Mysql
helm del --purge cellery-mysql
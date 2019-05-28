#Deploy Cellery Runtime using HELM

### Deploy Mysql
helm install --name cellery-mysql --namespace cellery-system

### Cleanup Mysql
helm del --purge cellery-mysql

## Deploy Control Plane

###Deploy APIM
helm install --name gateway global-apim --namespace cellery-system

###Cleanup APIM
helm del --purge gateway


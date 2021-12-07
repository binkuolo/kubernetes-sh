
# Nginx-ingress 在线安装
```
helm repo add bitnami https://charts.bitnami.com/bitnami

helm install nginx-ingress bitnami/nginx-ingress-controller --version 7.6.21 --set "hostNetwork=true,defaultBackend.enabled=false,nodeSelector.kubernetes\.io\/hostname=nodeName"
```

# Nginx-ingress 离线安装
```
helm install nginx-ingress nginx-ingress-controller -f values.yaml
```

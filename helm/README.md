
# Helm安装
```
tar -zxvf helm-v3.6.2-linux-amd64.tar.gz
mv linux-amd64/helm /usr/local/bin/helm
echo source <(helm completion bash) >> ~/.bashrc
source ~/.bashrc
```

# Dashboard 安装

```
helm repo add k8s-dashboard https://kubernetes.github.io/dashboard
helm install kubernetes-dashboard k8s-dashboard/kubernetes-dashboard --version 5.0.0 --set 'service.type=NodePort,service.nodePort=32108,nodeSelector.kubernetes\.io\/hostname=nodeName'
```


# Nginx-ingress 安装
```
helm repo add bitnami https://charts.bitnami.com/bitnami

helm install nginx-ingress bitnami/nginx-ingress-controller --version 7.6.21 --set "hostNetwork=true,nodeSelector.kubernetes\.io\/hostname=nodeName"
```

# Prometheus监控
```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack --version 18.0.3 --set 'kube-state-metrics.image.repository=docker.io/bitnami/kube-state-metrics,kube-state-metrics.image.tag=2.2.0,grafana.adminPassword=prom-operator,grafana.service.type=NodePort,grafana.service.nodePort=32106'
```

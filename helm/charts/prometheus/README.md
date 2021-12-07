# Prometheus监控 在线安装
```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack --version 18.0.3 --set 'kube-state-metrics.image.repository=docker.io/bitnami/kube-state-metrics,kube-state-metrics.image.tag=2.2.0,grafana.adminPassword=prom-operator,grafana.service.type=NodePort,grafana.service.nodePort=32106'
```

# Prometheus监控 离线安装
```
helm install prometheus kube-prometheus-stack -f values.yaml
```

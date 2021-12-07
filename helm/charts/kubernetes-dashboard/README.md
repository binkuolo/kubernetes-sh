
# Dashboard 在线安装

```
helm repo add k8s-dashboard https://kubernetes.github.io/dashboard
helm install kubernetes-dashboard k8s-dashboard/kubernetes-dashboard --version 5.0.0 --set 'service.type=NodePort,service.nodePort=32108,nodeSelector.kubernetes\.io\/hostname=nodeName'
```
绑定角色
```
kubectl apply -f dashboard_account_role_bind.yaml
```
查看dashboard默认token
```
kubectl describe secrets kubernetes-dashboard-token-hj5h5 
```


# Dashboard 离线安装
```
helm install kubernetes-dashboard kubernetes-dashboard -f values.yaml
```
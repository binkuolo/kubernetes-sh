# Kubernetes UI
集群部署好之后就可以安装 默认安装到master节点
### 安装步骤
1. kubectl apply -f recommended.yaml
2. kubectl apply -f create-user.yaml
3. kubectl apply -f create-role.yaml    
4. `kubectl get pod -A` 查看dashboard的 pod 是否启动
5. `kubectl get svc -A` 查看dashboard的 service 是否启动
### 注意 
> 默认暴露nodePort: 24589
> 默认创建用户名为 admin-user

### 获取token   
> `kubectl -n kubernetes-dashboard get secret $(kubectl -n kubernetes-dashboard get sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}"`

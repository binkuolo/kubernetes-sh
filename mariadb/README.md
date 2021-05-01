# Mariadb 数据库持久化
直接在master上搭建nfs存储

## nfs 搭建
1. `yum -y install nfs-utils`  将要挂载mariadb的节点也要安装这个
2. `systemctl enable rpcbind`
3. `mkdir -p /nfsdata/mariadb`
4. `vim /etc/exports`
5. 输入 `/nfsdata *(rw,sync,no_root_squash)` 并保存
6. `systemctl start nfs-server`
7. `systemctl enable nfs-server`
8. `showmount -e`可以看到如下信息   
Export list for master:
/nfsdata *

## 创建服务
执行 `kubectl apply -f mariadb.yaml`

## 注意 
> 具体实现流出、密码设置、暴露的端口 等信息请看mariadb.yaml文件
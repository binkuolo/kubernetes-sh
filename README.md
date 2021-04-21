# k8s-auto

#### 介绍
Kubernetes 自动安装部署脚本 一切都自动化都是为了懒惰都人类😄  
最重要的一点 切勿在生产环境执行 除非你和你boss的关系非常铁
#### 软件架构
Centos-7.6-x86_64-DVD-1810 + kubernetes1.19.4 + docker-ce-19.03.9 + calico


#### 安装教程

1.  `yum install -y git`
2.  `git clone https://gitee.com/langengel/k8s-auto.git`
3.  `cd k8s-auto`
4.  `chmod +x kuberneter-install.sh`

#### 使用说明

1.  执行脚本 `./kuberneter-install.sh`
2.  `set hostname default k8s-master`:设置主机名 默认为 k8s-master
3.  `this hostname is k8s-master [y/n]？` 确定要设置就输入y 其他操作退出安装程序
4.  `this node is master-node? [y/n] default no？` 输入y设置为主节点 输入其他都视为非主节点 非主节点将不初始化kubeadm
5.  `set kube-api IP default 192.168.3.200` 输入kubeadm api IP 相当于设置--apiserver-advertise-address参数值 主节点必须设置否则退出安装脚本
6.  如果是主节点 脚本自动开启了ipvs模式  你不需要再做什么 节点正常后你可以通过ipvsadm -ln命令查看到具体状态
7.  如果是master节点脚本执行成功后 会在当前目录生产一个kubernetes-init.log文件 里面有子节点加入的token和命令
8.  kubectl 命令补全提示在脚本执行完毕之后 在你的终端执行 source .bashrc 即可

#### 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request


#### 特技

1.  你有更好的请提pr, 不提供技术支持

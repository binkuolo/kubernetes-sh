> 更多的配置参数查看官方文档

https://kubernetes.io/docs/reference/command-line-tools-reference/kubelet/
https://godoc.org/k8s.io/kubelet/config/v1beta1#KubeletConfiguration

关于这个配置文件的文档还是很不完善，对于不懂 golang 的人来说很难知道具体怎么配置，以下做一下简要说明(请确保你已经拉取了 kubernetes 源码

kubeadm 配置中每个配置段都会有个 kind 字段，kind 实际上对应了 go 代码中的 struct 结构体；
同时从 apiVersion 字段中能够看到具体的版本，比如 v1alpha1 等；
有了这两个信息事实上你就可以直接在源码中去找到对应的结构体

关于数据类型，如果是 string 的类型，那么意味着你要在 yaml 里写 "xxxx" 带引号这种，当然有些时候不写能兼容，有些时候不行比如 extraArgs 字段是一个 map[string]string 如果 value 不带引号就报错；如果数据类型为 metav1.Duration(实际上就是 time.Duration)，那么你看着它是个 int64 但实际上你要写 1h2m3s 这种人类可读的格式
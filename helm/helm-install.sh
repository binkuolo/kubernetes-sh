#! /bin/bash
# author: langengel@qq.com
# date: 2021-09-03
# des: helm安装脚本 helm版本 v3.6.2

tar -zxvf helm-v3.6.3-linux-amd64.tar.gz
mv linux-amd64/helm /usr/local/bin/helm
helm completion bash > /etc/bash_completion.d/helm
source ~/.bashrc
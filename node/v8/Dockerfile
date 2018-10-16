FROM registry.cn-hangzhou.aliyuncs.com/huati/centos:7
MAINTAINER Leelmes "i@chengxuan.li"

# 安装软件
RUN mkdir -p /data1/download && \
    cd /data1/download && \
    curl -L -o ./node.tar.gz https://npm.taobao.org/mirrors/node/latest-v8.x/node-v8.9.1-linux-x64.tar.gz && \
    tar zxvf node.tar.gz && \
    cp -Rf ./node-*/bin /usr/local/ && \
    cp -Rf ./node-*/lib /usr/local/ && \
    cp -Rf ./node-*/include /usr/local/ && \
    cp -Rf ./node-*/share /usr/local/ && \
    npm install -g cnpm --registry=https://registry.npm.taobao.org && \
    mkdir -p /data1/shell && \
    cd /data1 && \
    rm -Rf download && \
    yum install -y bzip2 && yum clean all

# 工作目录
WORKDIR /data1

CMD ["node"]

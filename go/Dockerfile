FROM registry.cn-hangzhou.aliyuncs.com/huati/centos7-gcc
MAINTAINER Leelmes "i@chengxuan.li"

RUN cd /data1 && \
    curl -o ./go.tar.gz https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz && \
    tar zxvf ./go.tar.gz -C /usr/local && \
    ln -s /usr/local/go/bin/* /usr/local/bin/ && \
    rm -Rf /data1/go.*


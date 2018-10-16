FROM registry.cn-beijing.aliyuncs.com/flyhope/centos
MAINTAINER Leelmes "i@chengxuan.li"

RUN cd /data1 && \
    curl -o ./go.tar.gz https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz && \
    tar zxvf ./go.tar.gz -C /usr/local && \
    ln -s /usr/local/go/bin/* /usr/local/bin/ && \
    rm -Rf /data1/go.* && \
	yum install -y git && yum clean all 


FROM registry.cn-beijing.aliyuncs.com/flyhope/centos:7
MAINTAINER Leelmes "i@chengxuan.li"

# 安装MySQL-SERVER
RUN yum install -y memcached && yum clean all


# 设置暴露端口
EXPOSE 11211

# 默认执行
ENTRYPOINT ["/usr/bin/memcached"]
CMD ["-umemcached", "-m256m", "-p11211", "-c2500"]

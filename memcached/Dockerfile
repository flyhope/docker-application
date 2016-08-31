FROM registry.aliyuncs.com/huati/centos:7
MAINTAINER Leelmes "chengxuan@staff.weibo.com"

# 安装MySQL-SERVER
RUN yum install -y memcached && yum clean all


# 设置暴露端口
EXPOSE 11211

# 默认执行
ENTRYPOINT ["/usr/bin/memcached"]
CMD ["-u nobody", "-m 256m", "-p 11211", "-c 2500"]

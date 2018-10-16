FROM registry.cn-beijing.aliyuncs.com/flyhope/centos:7
MAINTAINER Leelmes "i@chengxuan.li"

# 安装MySQL-SERVER
RUN yum install -y redis && yum clean all

# 复制配置
COPY ./files/redis.conf /etc/

# 设置暴露端口
EXPOSE 6379

# 默认执行
CMD ["/usr/bin/redis-server", "/etc/redis.conf"]

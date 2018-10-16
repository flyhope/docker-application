FROM registry.aliyuncs.com/huati/centos:7
MAINTAINER Leelmes "i@chengxuan.li"


# 复制脚本
COPY ./files/startup.sh /data1/

# 安装MySQL-SERVER
RUN rpm -Uvh http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm && \
    yum-config-manager --disable 'mysql*' && \
    yum-config-manager --enable 'mysql55-*' && \
    yum -y install mysql-community-server && \
    yum clean all && \
    chmod +x /data1/startup.sh

# 复制配置文件
COPY ./files/my.cnf /etc/

# 设置暴露端口
EXPOSE 3306

# 允许挂载的目录
VOLUME /var/lib/mysql

# 默认执行
CMD ["/data1/startup.sh"]
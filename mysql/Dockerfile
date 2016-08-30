FROM registry.aliyuncs.com/huati/centos:7
MAINTAINER Leelmes "chengxuan@staff.weibo.com"

# 安装MySQL-SERVER
RUN rpm -Uvh http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm && yum-config-manager --disable 'mysql*' && yum-config-manager --enable 'mysql55-*' && yum -y install mysql-community-server ; yum clean all

# 复制配置文件与脚本
COPY ./files/my.cnf /etc/
COPY ./files/startup.sh /data1/

# 设置暴露端口
EXPOSE 3306

# 允许挂载的目录
VOLUME /var/lib/mysql

# 默认执行
CMD ["/usr/bin/mysqld_safe"]

FROM registry.cn-hangzhou.aliyuncs.com/huati/centos7-gcc
MAINTAINER Leelmes "chengxuan@staff.weibo.com"

RUN yum -y install snappy-devel protobuf-compiler protobuf-devel bzip2-devel zlib-devel bzip2 git && \

# 准备工作
mkdir -p /data1/download && \
cd /data1/download && \
git clone https://github.com/Qihoo360/pika.git && \
cd /data1/download/pika && \
git checkout -b v2.1.4 && \
git submodule init && \
git submodule update && \

# 编译安装
make __REL=1 && \
cp -f ./output/lib/libglog.so.0 /usr/lib64/ && \
rm -f /lib64/libstdc++.so && \
rm -f /lib64/libstdc++.so.6 && \
ln -s /usr/local/lib64/libstdc++.so /lib64/libstdc++.so && \
ln -s /usr/local/lib64/libstdc++.so.6 /lib64/libstdc++.so.6 && \
cp -R ./output /usr/local/pika && \

# 处理配置
mkdir -p /data1/pika/log && \
mkdir -p /data1/pika/db && \
mkdir -p /data1/pika/dbsync && \
mkdir -p /data1/pika/dump && \
touch /data1/pika/pika.pid && \

sed -i 's/thread-num\s*:.*/thread-num : 4/g' /usr/local/pika/conf/pika.conf && \
sed -i 's/log-path\s*:.*/log-path : \/data1\/pika\/log/g' /usr/local/pika/conf/pika.conf && \
sed -i 's/db-path\s*:.*/db-path : \/data1\/pika\/db/g' /usr/local/pika/conf/pika.conf && \
sed -i 's/dump-path\s*:.*/dump-path : \/data1\/pika\/dump/g' /usr/local/pika/conf/pika.conf && \
sed -i 's/log-path\s*:.*/log-path : \/data1\/pika\/log/g' /usr/local/pika/conf/pika.conf && \
sed -i 's/pidfile\s*:.*/pidfile : \/data1\/pika\/pika.pid/g' /usr/local/pika/conf/pika.conf && \

# 清理现场
cd /data1 && \
rm -Rf /data1/download && \
yum erase -y git

CMD ["/usr/local/pika/bin/pika", "-c", "/usr/local/pika/conf/pika.conf"]
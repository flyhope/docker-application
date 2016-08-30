#!/bin/bash

# 初始化数据库
if [ "`ls -A /var/lib/mysql`" = "" ]; then
	/usr/bin/mysql_install_db --user=mysql
fi

# 设置ServerID
if [ ! -z "$MYSQL_SERVER_ID" ]; then
	sed -i 's/server-id=.*/server-id='$MYSQL_SERVER_ID'/g' /etc/my.cnf
fi

# 启动服务
/usr/bin/mysqld_safe

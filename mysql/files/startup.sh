#!/bin/bash

# 初始化数据库
if [ "`ls -A /var/lib/mysql`" = "" ]; then
	/usr/bin/mysql_install_db --user=mysql
fi

# 设置ServerID
if [ ! -z "$MYSQL_SERVER_ID" ]; then
	sed -i 's/server-id=.*/server-id='$MYSQL_SERVER_ID'/g' /etc/my.cnf
fi


# 设置自动ID步长
if [ ! -z "$MYSQL_AUTO_INCREMENT_INCREMENT" ]; then
	sed -i 's/auto_increment_increment=.*/auto_increment_increment='$MYSQL_AUTO_INCREMENT_INCREMENT'/g' /etc/my.cnf
fi
if [ ! -z "$MYSQL_AUTO_INCREMENT_OFFSET" ]; then
	sed -i 's/auto_increment_offset=.*/auto_increment_offset='$MYSQL_AUTO_INCREMENT_OFFSET'/g' /etc/my.cnf
fi

# 启动服务
/usr/bin/mysqld_safe
#!/bin/bash

# 1.设置debug
#[ $DEBUG ] && set -x

echo -e "start php-fpm in background."
php-fpm 

# 2.设置断点
#sleep ${PAUSE:-0}

# 3.检查依赖的服务
#TIMEOUT=${TIMEOUT:-30}  
#while [ $TIMEOUT -gt 0 ]
#do
#    nc -w 1  ${MYSQL_HOST:-127.0.0.1} ${MYSQL_PORT:-3306} 2>&1 >/dev/null
#    if [ $? -eq 0 ];then
#        break
#    fi
#    echo "Waiting MySQL service $TIMEOUT seconds"
#    TIMEOUT=`expr $TIMEOUT - 1`;
#    sleep 1
#done
#
#if [ $TIMEOUT -eq 0 ]; then
#	echo >&2 'Start failed,please ensure mysql service has started.'
#	exit 1
#else
#  echo -e "start nginx in foreground...\n"
#  nginx -g 'daemon off;'
#fi
#

echo -e "start nginx in foreground...\n"
nginx -g 'daemon off;'

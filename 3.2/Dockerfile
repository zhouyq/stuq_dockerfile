FROM alpine:3.4
MAINTAINER zhouyq@goodrain.com


# 更改apt软件源
RUN echo "http://mirrors.aliyun.com/alpine/v3.4/main/" > /etc/apk/repositories

# 设置时区
RUN apk add --no-cache tzdata && \
	echo "Asia/Shanghai" >  /etc/timezone && \
 	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	date && apk del --no-cache tzdata

# 安装与配置nginx+php
RUN apk add --no-cache php5 php5-fpm curl nginx elinks bash netcat-openbsd && \
    mkdir /run/nginx/ -pv

ADD etc /etc
ADD docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

#ENTRYPOINT ["php-fpm","-F"]
#ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/docker-entrypoint.sh"]

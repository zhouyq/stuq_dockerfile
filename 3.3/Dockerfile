FROM alpine:3.4
MAINTAINER zhouyq@goodrain.com


# 更改apt软件源
RUN echo "http://mirrors.aliyun.com/alpine/v3.4/main/" > /etc/apk/repositories

# 安装与配置nginx+php
RUN apk add --no-cache php5 php5-fpm php5-pdo php5-pdo_mysql php5-json php5-opcache  \
    curl nginx elinks bash netcat-openbsd tzdata && \
    mkdir /run/nginx/ -pv && \
    echo "Asia/Shanghai" >  /etc/timezone && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    apk del --no-cache tzdata

# nginx and php config files 
ADD etc etc
ADD zentaopms.tar.gz /app

ADD docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh && \
    chown nginx.nginx /app -R

WORKDIR /app

#ENTRYPOINT ["php-fpm","-F"]
#ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/docker-entrypoint.sh"]

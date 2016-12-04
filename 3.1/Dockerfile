FROM alpine:3.4
MAINTAINER zhouyq@goodrain.com


# china repositories mirror
RUN echo "http://mirrors.ustc.edu.cn/alpine/v3.4/main/" > /etc/apk/repositories


RUN apk add --no-cache php5 php5-fpm curl nginx elinks && \
    mkdir /run/nginx/ -pv && \
    sed -i -r  -e 's/(user = )nobody/\1nginx/' -e 's/(group = )nobody/\1nginx/'  /etc/php5/php-fpm.conf && \
    sed -i -r  's/^(include.*)/;\1/' /etc/php5/php-fpm.conf && \
    echo -e "<?php\nphpinfo();\n?>" > /var/lib/nginx/html/phpinfo.php && \
    sed -i -r 's/#user  nobody;/user  nginx;/' /etc/nginx/nginx.conf && \
    sed -i -r  '/FastCGI/a\include conf.d/php.conf;' /etc/nginx/nginx.conf

RUN  echo -e 'location ~ \.php$ {\n\
            root           html;\n\
            fastcgi_pass   127.0.0.1:9000;\n\
            fastcgi_index  index.php;\n\
            fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;\n\
            include        fastcgi_params;\n\
        }\n'\ 
        > /etc/nginx/conf.d/php.conf

ADD docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

#ENTRYPOINT ["php-fpm","-F"]
ENTRYPOINT ["/docker-entrypoint.sh"]

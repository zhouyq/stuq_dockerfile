FROM ubuntu:14.04
MAINTAINER zhouyq@goodrain.com


# modify apt sources
RUN sed -i 's#archive.ubuntu.com#mirrors.aliyun.com/ubuntu/#g' /etc/apt/sources.list

# 1. 多个RUN指令
#RUN apt-get update && apt-get install dstat -y 
#RUN apt-get install htop -y
#RUN apt-get install nginx -y
#RUN rm -rf /var/lib/apt/lists/*

# 2. 一条RUN指令
RUN apt-get update && apt-get install dstat htop nginx -y && rm -rf /var/lib/apt/lists/*

# 3. 使用cache
ENV VERSION=1.3
RUN  echo $VERSION > /tmp/verson.txt

# 4. .dockerignore 过滤无用文件
ADD code /code

CMD ["dstat","-l"]

FROM ubuntu:14.04
MAINTAINER zhouyq@goodrain.com


# modify apt sources
RUN sed -i 's#archive.ubuntu.com#mirrors.aliyun.com/ubuntu/#g' /etc/apt/sources.list

# install dstat 
RUN apt-get update && apt-get install dstat -y 
RUN apt-get install htop -y
#RUN apt-get install nginx -y
RUN rm -rf /var/lib/apt/lists/*

#RUN apt-get update && apt-get install dstat htop nginx -y && rm -rf /var/lib/apt/lists/*

ENV VERSION=1.3
RUN  echo $VERSION > /tmp/verson.txt

ADD code /code

ENTRYPOINT ["dstat","-t"]
CMD ["-c","-l"]

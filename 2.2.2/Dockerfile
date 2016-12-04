FROM ubuntu:14.04
MAINTAINER zhouyq@goodrain.com

# modify apt sources
RUN sed -i 's#archive.ubuntu.com#mirrors.aliyun.com/ubuntu/#g' /etc/apt/sources.list

# install dstat 
RUN apt-get update && apt-get install dstat -y && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["dstat","-t"]
CMD ["-c","-l"]

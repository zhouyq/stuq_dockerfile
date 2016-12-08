FROM alpine:3.4
MAINTAINER zhouyq@goodrain.com

# 1.ADD from URL
ADD http://localhost/logo.png /tmp/logo.png

# 2. ADD 解压文件
ADD code.tar.gz /code_gz
ADD code.tar.bz2 /code_bz2

# 3.目录与文件
ADD addtest /addtest/
COPY copytest /copytest/

COPY code /code_dir

ENTRYPOINT ["ash"]

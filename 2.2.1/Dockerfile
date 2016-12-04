FROM alpine:3.4
MAINTAINER zhouyq@goodrain.com


ADD http://localhost/logo.png /tmp/logo.png
ADD code.tar.gz /code_gz
ADD code.tar.bz2 /code_bz2


ADD addtest /addtest
COPY copytest /copytest

COPY code /code_dir

ENTRYPOINT ["ash"]

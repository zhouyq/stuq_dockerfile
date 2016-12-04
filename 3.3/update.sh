#!/bin/bash

DOWNLOAD_URL="http://dl.cnezsoft.com/zentao/8.3.1/ZenTaoPMS.8.3.1.zip"
FILENAME="ZenTaoPMS.8.3.1.zip"
wget $DOWNLOAD_URL

unzip $FILENAME

tar czvf zentaopms.tar.gz zentaopms && rm -rf zentaopms && rm $FILENAME

#!/usr/bin/env bash
set -e
URL=`curl -s -i $1|grep Location|awk '{print $2}'|tr -d '\r'`
curl -O $URL
echo -e "save as\033[31m ${URL##*/}  \033[0m" 

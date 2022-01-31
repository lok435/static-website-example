#!/bin/sh
/usr/sbin/nginx -g 'daemon off;'
nohup ./tmp/script.sh &

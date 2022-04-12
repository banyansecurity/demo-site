#!/bin/bash

echo "Check env vars"
MY_INSTANCE_ID=${INSTANCE_ID:-instance_id}
MY_PRIVATE_IP=${PRIVATE_IP:-private_id}

echo "Replace in HTML files"
sed -i "s/MY_INSTANCE_ID/${MY_INSTANCE_ID}/g" /usr/share/nginx/html/*.html
sed -i "s/MY_PRIVATE_IP/${MY_PRIVATE_IP}/g" /usr/share/nginx/html/*.html

echo "Start nginx"
nginx -g "daemon off;"
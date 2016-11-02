#!/bin/bash
mkdir /home/ikasle/vhost
mv /home/ikasle/vhost* /home/ikasle/vhost
docker stop nginx
docker rm nginx
docker run --name nginx -d -p 8080:80 -v /home/ikasle/vhost:/etc/ngnx/conf.d nginx
docker exec -ti nginx /etc/init.d/nginx reload

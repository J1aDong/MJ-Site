FROM daocloud.io/nginx:1.11-alpine

MAINTAINER J1aDong "991383877@qq.com"

COPY dist/. /usr/share/nginx/html

EXPOSE 80

CMD sed -i "s/ContainerID: /ContainerID: "$(hostname)"/g" /usr/share/nginx/html/index.html && nginx -g "daemon off;"

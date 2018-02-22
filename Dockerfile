FROM daocloud.io/nginx

MAINTAINER J1aDong "991383877@qq.com"

COPY dist/. /usr/share/nginx/html

EXPOSE 8080

CMD sed -i "s/ContainerID: /ContainerID: "$(hostname)"/g" /usr/share/nginx/html/index.html && nginx -g "daemon off;"

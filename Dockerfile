FROM ubuntu
MAINTAINER takipone <xxxx@gmail.com>
RUN apt-get update && \
    apt-get install --no-install-recommends -y nginx && \
    rm -rf /var/lib/apt/lists/*
ADD index.html /usr/share/nginx/html/
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf

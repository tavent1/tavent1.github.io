FROM nginx:mainline-alpine

RUN rm /etc/nginx/conf.d/*
RUN rm /usr/share/nginx/html/index.html
ADD html/index.html /usr/share/nginx/html/
ADD hello.conf /etc/nginx/conf.d/
EXPOSE 80
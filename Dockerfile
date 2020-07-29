FROM nginx:mainline-alpine

RUN rm /etc/nginx/conf.d/*
COPY html /usr/share/nginx/html
ADD hello.conf /etc/nginx/conf.d/
EXPOSE 80
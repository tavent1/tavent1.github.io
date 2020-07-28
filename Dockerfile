FROM nginx:mainline-alpine

COPY . /app

RUN rm /etc/nginx/conf.d/*
RUN rm /usr/share/nginx/html/index.html
ADD ./html /usr/share/nginx/html/
ADD hello.conf /etc/nginx/conf.d/
EXPOSE 80
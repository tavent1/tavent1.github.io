FROM nginx

RUN rm /etc/nginx/conf.d/*
COPY . /usr/share/nginx/html
ADD hello.conf /etc/nginx/conf.d/
EXPOSE 80
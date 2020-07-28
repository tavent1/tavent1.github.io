FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
RUN rm /usr/share/nginx/html/index.html
ADD hello.conf /etc/nginx/conf.d/
ADD index.html /usr/share/nginx/html/
EXPOSE 80
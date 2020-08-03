FROM nginx

RUN rm /etc/nginx/conf.d/default.conf
COPY content /usr/share/nginx/html
ADD hello.conf /etc/nginx/conf.d/
VOLUME /usr/share/nginx/html
VOLUME /etc/nginx
EXPOSE 80
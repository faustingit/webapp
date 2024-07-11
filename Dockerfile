FROM ubuntu
MAINTAINER fa
RUN apt update
RUN apt install -y nginx
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
EXPOSE 80
#ADD static-website-example/var/www/html/
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]

FROM nginx:latest

ENV DOMAIN_NAME = $DOMAIN_NAME
#  default conf for proxy service
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

# NOT FOUND response
COPY ./404-not-found.html /var/www/html/404-not-found.html

# Proxy configurations
COPY ./includes/ /etc/nginx/includes/
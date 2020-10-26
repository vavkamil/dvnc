# Damn Vulnerable NodeJS Application

FROM nginx
LABEL MAINTAINER "vavkamil.cz"

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/conf.d/default.conf

RUN rm -v /usr/share/nginx/html/50x.html
RUN rm -v /usr/share/nginx/html/index.html

COPY html /usr/share/nginx/html
COPY config /etc/nginx/conf.d
FROM nginx:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install python-certbot-nginx -y
RUN openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048

RUN mkdir /etc/nginx/sites
COPY nginx.conf /etc/nginx/
COPY http* /etc/nginx/sites/
RUN ls /etc/nginx/sites

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
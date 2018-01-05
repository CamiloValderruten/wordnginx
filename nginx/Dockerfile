FROM nginx:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install python-certbot-nginx -y
RUN openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
COPY nginx.conf /etc/nginx/
COPY http* /etc/nginx/
COPY entrypoint.sh /etc/nginx/
RUN chmod +x /etc/nginx/entrypoint.sh
ENTRYPOINT /etc/nginx/entrypoint.sh
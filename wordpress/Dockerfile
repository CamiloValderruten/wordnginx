FROM wordpress:latest

COPY configurations.ini /usr/local/etc/php/conf.d/configurations.ini
COPY htaccess /var/www/html/.htaccess
RUN a2enmod rewrite
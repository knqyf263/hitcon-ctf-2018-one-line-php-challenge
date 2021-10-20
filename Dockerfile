FROM php:7.2-apache

COPY index.php /var/www/html
COPY php.ini /usr/local/etc/php/
RUN apt-get -y update && apt-get -y install vim

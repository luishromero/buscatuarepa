FROM php:7.2.18-apache

ADD app /var/www/html

RUN apt-get update -y
RUN docker-php-ext-install pdo pdo_mysql mysqli

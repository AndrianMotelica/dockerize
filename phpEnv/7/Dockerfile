FROM php:7.0.19-apache

COPY ./runtime/.env /var/sym/.env

RUN apt-get clean && apt-get update \
    && docker-php-ext-install -j$(nproc) pdo pdo_mysql

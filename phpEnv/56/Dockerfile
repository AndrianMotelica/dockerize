FROM php:5.6-apache

# apt preparation
RUN apt-get clean && apt-get update && \
    apt-get install -y vim mc net-tools git

# composer installation
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./runtime/run.sh /opt/run.sh
COPY ./runtime/.env /var/sym/.env 
RUN chmod +x /opt/run.sh

CMD ["/opt/run.sh"]

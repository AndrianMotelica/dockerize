FROM php:5.6-apache

#add root passwrd to root user
RUN echo "root:root" | chpasswd

# apt preparation
RUN apt-get clean && apt-get update && \
    apt-get install -y software-properties-common python-software-properties openssh-server vim mc net-tools git

# prepare ssh and modify root credentials
RUN mkdir /var/run/sshd
RUN service ssh restart

# composer installation
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./runtime/run.sh /opt/run.sh
RUN chmod +x /opt/run.sh

CMD ["/opt/run.sh"]

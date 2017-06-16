#!/bin/bash

# start services
service apache2 restart

# setup permissions
chmod -R 777 /var/www/html

#create env symlink
ln -s /var/sym/.env /var/www/html/project/.env

# run to infinity
tail -f /dev/null

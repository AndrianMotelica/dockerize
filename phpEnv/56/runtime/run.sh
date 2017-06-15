#!/bin/bash

# start services
service apache2 restart

# setup permissions
chmod -R 777 /var/www/html

# run to infinity
tail -f /dev/null

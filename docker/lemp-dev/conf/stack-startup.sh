#!/bin/bash

# start mysql db
/etc/init.d/mysql start

# setup db
/setup/setup.sh

# start php
/etc/init.d/php7.2-fpm start

nginx -g "daemon off;"

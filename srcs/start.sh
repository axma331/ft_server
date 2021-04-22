#!/bin/bash
echo "\033[36mft_server starting!\033[0m"

service nginx start
service mysql start
service php7.3-fpm start
mysql < mysql-config.sql

mv autoindex.sh .autoindex.sh
mkdir .tmp && mv *.sh *.sql .tmp
mkdir -p ./phpmyadmin/tmp && chown www-data:www-data ./phpmyadmin/tmp && chmod 700 ./phpmyadmin/tmp

sleep infinity
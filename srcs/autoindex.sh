#!/bin/bash
if grep -q "autoindex on;" /etc/nginx/sites-available/default
then
	sed -i 's/autoindex on;/autoindex off;/' /etc/nginx/sites-available/default
	echo "\033[36mAutoindex \033[31moff!\033[0m"
	service nginx reload
elif grep -q "autoindex off;" /etc/nginx/sites-available/default
then
	sed -i 's/autoindex off;/autoindex on;/' /etc/nginx/sites-available/default
	echo "\033[36mAutoindex \033[32mon!\033[0m"
	service nginx reload
fi

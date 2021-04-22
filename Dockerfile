FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install wget \
	nginx default-mysql-server php7.3 php7.3-mysql php7.3-fpm php7.3-xml php7.3-mbstring vim -y

COPY srcs/default ./etc/nginx/sites-available

WORKDIR /var/www/html
RUN chown -R www-data ./* && chmod -R 755 ./*

RUN wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz \
	&& tar xvzf phpMyAdmin-*.tar.gz && rm -rf phpMyAdmin-*.tar.gz \
	&& mv phpMyAdmin-* phpmyadmin

RUN wget https://ru.wordpress.org/latest-ru_RU.tar.gz \
	&& tar xvzf latest-*.tar.gz && rm -rf latest-*.tar.gz

COPY srcs/*.sh srcs/mysql-config.sql ./
COPY srcs/config.inc.php ./phpmyadmin
COPY srcs/wp-config.php ./wordpress

RUN openssl req -newkey rsa:2048 -x509 -sha256 -days 365 -nodes \
	-keyout /etc/ssl/selfsigned.key \
	-out /etc/ssl/selfsigned.crt \
    -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21school/CN=localhost"	   

EXPOSE 80 443

ENTRYPOINT sh start.sh && bash
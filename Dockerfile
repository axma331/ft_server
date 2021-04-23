FROM debian:buster

RUN apt-get update && apt-get upgrade -y \
	&& apt-get install -y\
	vim \
	wget \
	nginx \
	php7.3 \
	php7.3-fpm \
	php7.3-xml \
	php7.3-mysql \
	php7.3-mbstring \
	default-mysql-server \
	&& wget -P /var/www/html/ https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz \
	&& tar xvzf /var/www/html/phpMyAdmin-*.tar.gz \
	&& mv phpMyAdmin-* /var/www/html/phpmyadmin \
	&& rm -rf /var/www/html/phpMyAdmin-*.tar.gz \
	&& wget -P /var/www/html/ https://ru.wordpress.org/latest-ru_RU.tar.gz \
	&& tar xvzf /var/www/html/latest-*.tar.gz -C /var/www/html/ \
	&& rm -rf /var/www/html/latest-*.tar.gz \
	&& openssl req -newkey rsa:2048 -x509 -sha256 -days 365 -nodes \
	-keyout /etc/ssl/selfsigned.key \
	-out /etc/ssl/selfsigned.crt \
    -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21school/CN=localhost" \
	&& mkdir srcs

COPY srcs/default /etc/nginx/sites-available
COPY srcs/*.sh srcs/mysql-config.sql srcs/
COPY srcs/config.inc.php /var/www/html/phpmyadmin/
COPY srcs/wp-config.php /var/www/html/wordpress/

WORKDIR /var/www/html/

RUN chmod -R 755 ./* && chown -R www-data ./*

EXPOSE 80 443

ENTRYPOINT sh /srcs/start.sh && bash
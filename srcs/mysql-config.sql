CREATE DATABASE database_wp;
CREATE USER 'feschall'@'localhost' IDENTIFIED BY '21school';
GRANT ALL PRIVILEGES ON database_wp.* TO 'feschall'@'localhost';
FLUSH PRIVILEGES;
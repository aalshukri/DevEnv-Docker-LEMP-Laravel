# Creating the MySQL database
CREATE DATABASE IF NOT EXISTS `laravel`;

# Creating the MySQL user (replace the user and password with your own values)
CREATE USER 'laravel_user'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT ALL ON `laravel`.* TO 'laravel_user'@'%';

USE `laravel`;

# Do nothing as table creation handled within Laravel migrations
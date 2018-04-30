FROM ubuntu:16.04

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install php libapache2-mod-php php-mcrypt -y
RUN php composer-setup.php --install-dir=bin --filename=composer -y
RUN composer global require "laravel/installer"
RUN apt-get install mysql-server -y

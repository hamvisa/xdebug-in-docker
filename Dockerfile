FROM php:7.3-apache
MAINTAINER "Sahil Maniar"
COPY phpinfo.php /var/www/html/
WORKDIR /var/www/html
RUN pecl install xdebug
RUN echo "zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20180731/xdebug.so" >> /usr/local/etc/php/php.ini


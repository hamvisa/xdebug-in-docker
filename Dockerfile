FROM php:7.3-apache
MAINTAINER "Sahil Maniar"
RUN pecl install xdebug
RUN echo "zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20180731/xdebug.so" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.profiler_enable=1" >> 	/usr/local/etc/php/php.ini
RUN echo "xdebug.profiler_output_dir=/var/www/html" >> 	/usr/local/etc/php/php.ini
RUN chmod -R 777 /var/www/html
#Also, chmod 777 the current directory from which the docker run command is being run

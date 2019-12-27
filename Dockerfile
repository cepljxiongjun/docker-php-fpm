FROM php:7.4-fpm
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.9.0
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.remote_enable=1" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.remote_port=9001" >> /usr/local/etc/php/php.ini
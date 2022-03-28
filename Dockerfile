FROM php:7.4-fpm
RUN pecl install xdebug && docker-php-ext-enable xdebug
RUN touch /usr/local/etc/php/php.ini
COPY ./xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
COPY ./error_reporting.ini /usr/local/etc/php/conf.d/error_reporting.ini

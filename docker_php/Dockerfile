FROM php:7.1-fpm

RUN pecl install xdebug \
 && echo "zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20160303/xdebug.so" \
      >> /usr/local/etc/php/php.ini \
 && echo "xdebug.remote_enable=1" >> /usr/local/etc/php/php.ini \
 && echo "xdebug.remote_autostart=1" >> /usr/local/etc/php/php.ini \
 && echo "xdebug.remote_log=/var/log/xdebug.log" >> /usr/local/etc/php/php.ini

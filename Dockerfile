FROM php:8.2-alpine3.18
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer  \
    && composer global require psy/psysh:@stable \
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man /usr/local/lib/php/doc/*

CMD [ "/root/.composer/vendor/bin/psysh" ]

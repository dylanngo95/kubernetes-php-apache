FROM php:8.1-apache-buster

ENV COMPOSER_ALLOW_SUPERUSER=1

RUN apt-get update \
    && apt-get install -y vim tmux htop cron net-tools

RUN docker-php-ext-install pdo_mysql \
        opcache

RUN mkdir -p /var/www/html

COPY ./000-default.conf /etc/apache2/sites-enabled/000-default.conf

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

COPY ./mysite /var/www/html

COPY ./docker.sh /usr/local/bin/docker.sh

RUN composer install

ENTRYPOINT ["bash", "docker.sh"]

WORKDIR /var/www/html
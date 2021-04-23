FROM php:7.4.14-apache 
RUN docker-php-ext-install mysqli pdo_mysql
# RUN docker-php-ext-install
RUN apt-get update \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip
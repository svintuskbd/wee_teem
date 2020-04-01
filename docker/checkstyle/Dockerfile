FROM php:7.3-cli

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y  zlib1g-dev libzip-dev
RUN docker-php-ext-install zip
RUN composer global require friendsofphp/php-cs-fixer
RUN ln -s /root/.composer/vendor/bin/php-cs-fixer /bin

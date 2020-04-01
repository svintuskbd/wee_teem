#!/bin/sh

docker build --tag ks-checkstyle  ./docker/checkstyle
docker run --mount  src="$(pwd)/src",target=/var/www,type=bind -it ks-checkstyle bash -c "php-cs-fixer --verbose --rules=@Symfony,@PSR2,@PSR1 fix /var/www/"

#!/bin/bash
#defaults
phpContainer='test_php'
phpContainerPrefix=''
fileConfig=".env.local"

docker-compose down

docker-compose up -d --build
docker exec ${phpContainerPrefix}${phpContainer} /bin/bash -c "composer install"

if [ -f "$fileConfig" ]
then
	echo "$fileConfig config found."
else
  cp .env .env.local
	echo "$fileConfig config created."
fi
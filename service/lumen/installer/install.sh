#!/bin/bash 

env_file="`pwd`/.env"

if ! [ -f "~/.composer/vendor/laravel/lumen-installer/lumen" ];
then 
	echo "Install lumen globally";
	composer global require "laravel/lumen-installer"
fi;

cd /var/www/app

if [ -f ".env" ];
then 
	echo ".env already exists which means app probably exists"
	echo "you have 10 seconds to abort installation or else everything files will be overwriten";
	for i in $(seq 1 10);
	do 
		echo "Wait ${i}";
		sleep 1
	done
fi

cd /tmp	
~/.composer/vendor/laravel/lumen-installer/lumen new lumen
cd lumen 
mv * /var/www/app
mv ./.[a-z]* /var/www/app

cd /var/www/app
cat $env_file > ./.env

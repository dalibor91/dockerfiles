#!/bin/bash 

env_file="`pwd`/.env"

if ! [ -f "~/.composer/vendor/laravel/installer/laravel" ];
then 
	echo "Install laravel globally";
	composer global require laravel/installer
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

~/.composer/vendor/laravel/installer/laravel new -f .

cat $env_file > ./.env
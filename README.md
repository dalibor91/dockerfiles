# dockerfiles

## Dropbear 

Building 

```sh
docker build -t dropbear -f dockerfiles/Dockerfile.dropbear .
```

Running
```sh
docker run -it --rm --name dropbear --hostname dropbear -p "2222:22" dropbear
```

## PHP FPM 7.2

Building 

```sh
docker build -t php:7.2-fpm -f dockerfiles/Dockerfile.php7.2-fpm .
```

Running
```sh
docker run -it --rm --name php7.2-fpm --hostname php7.2-fpm -p "9000:9000" php:7.2-fpm 
```
## PHP Apache 7.2

Building 

```sh
docker build -t apache:php7.2 -f dockerfiles/Dockerfile.apache-php7.2 .
```

Running
```sh
docker run -it --rm --name apache-php7.2 --hostname apache-php7.2 -p "80:80" apache:php7.2
```

## PHP Nginx

Building 

```sh
docker build -t nginx -f dockerfiles/Dockerfile.nginx .
```

Running
```sh
docker run -it --rm --name nginx --hostname nginx -p "80:80" nginx
```

### Example 

Example of creating multiple apache instances with php 
and nginx that is entry point and proxies requests to apache webservses 


Make sure you have in `/etc/hosts`
```bash
127.0.0.1       app1.test app2.test app3.test app4.test app5.test
```

using `./compose` 

```bash 
./compose use example nginx
```
 
Without `./compose` run 
```bash 
docker-compose run --service-ports nginx
```

Note: port 80 has to be free 


### Laravel/Lumen installation 

Laravel + Mysql service 

To setup fresh installation of laravel run 
```bash
./compose use laravel init
```

To setup fresh installation of lumen run 
```bash
./compose use lumen init
```

Everytime after that you can start nececary services with 
```bash 
./compose use laravel app #or lumen
```

Default url is `laravel.test` or `lumen.test` so make sure that you add that to `/etc/hosts`
for more info see `service/laravel/compose.yml` or `service/lumen/compose.yml`

Laravel app is stored in `service/laravel/app` (Lumen `service/lumen/app`)

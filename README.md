# dockerfiles

## Dropbear 

Building 

```sh
docker build -t dropbear -f Dockerfile.dropbear .
```

Running
```sh
docker run -it --rm --name dropbear --hostname dropbear -p "2222:22" dropbear
```

## PHP FPM 7.2

Building 

```sh
docker build -t php:7.2-fpm -f Dockerfile.php7.2-fpm .
```

Running
```sh
docker run -it --rm --name php7.2-fpm --hostname php7.2-fpm -p "9000:9000" php:7.2-fpm 
```
## PHP Apache 7.2

Building 

```sh
docker build -t apache:php7.2 -f Dockerfile.apache-php7.2 .
```

Running
```sh
docker run -it --rm --name apache-php7.2 --hostname apache-php7.2 -p "80:80" apache:php7.2
```

## PHP Nginx

Building 

```sh
docker build -t nginx -f Dockerfile.nginx .
```

Running
```sh
docker run -it --rm --name nginx --hostname nginx -p "80:80" nginx
```
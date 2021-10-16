## Laravel Project

This repository is simple dockerized laravel
- Laravel Version: 8
- MySQL 5.7+
- nginx

## Initialization

```shell
make init-dev  # set .env file 
make run-dev   # running container
make install-laravel # install prerequisite library and config
```

## Running artisan
To running artisan command, enter to container
```shell
make run-into-contaner
```
after entering container, we can use php `artisan` command

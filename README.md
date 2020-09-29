# centos7-nginx-laravel6-container

- OS: CentOS7
- PHP: 7.2.x
- Composer: 1.10.x
- Laravel: 6.x
- Nginx: 1.18.x

## Port Mapping

- 22:   localhost:22011
- 80:   localhost:8080
- 9001: localhost:9011

## setup

```
docker-compose up -d
docker exec -it php-webapp /docker-bootstrap.sh
```

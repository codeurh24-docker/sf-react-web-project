### Installation

```sh
$ sudo docker build --tag apache2-php _build-php-image
$ sudo docker-compose up -d
```
### Access to services

| Services   | Address |
| ------     | ------ |
| Symfony    | [http://localhost:8888][URLSF] |
| React      | [http://localhost:3000][URLREACT] |
| Adminer    | [http://localhost:8080][URLUIDB] |
| MariadDB   | [http://localhost:3306][URLDB] |

[URLSF]: <http://localhost:8888>
[URLREACT]: <http://localhost:3000>
[URLUIDB]: <http://localhost:8080>
[URLDB]: <http://localhost:3306>
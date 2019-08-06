# pmm for pg && mysql

## how to running

* start services

```code
docker-compose up -d
```

* add mysql && pg external metrics services

```code

for mysql:

docker-compose exec mysql sh /root/initpmm.sh


for postgres

docker-compose exec postgres sh /root/initpmm.sh


for proxysql

docker-compose exec proxysql-metrics sh /root/initpmm.sh

```



## view result

* pormetheus

```code
open http://localhost/prometheus
```

* grafana

```code
open http://localhost/graph
```

* qan

```code
open http://localhost/qan
```

## some notes

we can also use qan add external database && external metrics services
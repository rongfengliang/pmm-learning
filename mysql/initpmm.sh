#!/bin/sh
while ! pmm-admin config --client-name mysql1 --server pmmserver
do
    sleep 1
done

pmm-admin add external:metrics mysql-demo mysqlexporter:9104
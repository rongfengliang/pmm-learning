#!/bin/sh
while ! pmm-admin config --client-name myproxysql --server pmmserver
do
    sleep 1
done
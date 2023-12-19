#!/bin/bash

# membuat docker image dari berkas dockerfile dengan nama order_service dan tag latest
docker build -t ndaday/order_service:latest .

# mengubah nama image
docker tag ndaday/order_service:latest ghcr.io/ndaday/order_service:latest

# login ke github package
echo $PAT | docker login ghcr.io --username phanatic --password-stdin

# mengunggah image ke github package
docker push ghcr.io/ndaday/order_service:latest